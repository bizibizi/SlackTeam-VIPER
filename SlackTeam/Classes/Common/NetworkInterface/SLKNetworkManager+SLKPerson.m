//
//  SLKNetworkManager+SLKPerson.m
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 5/6/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

#import "SLKNetworkManager+SLKPerson.h"
#import "SLKPerson.h"


@implementation SLKNetworkManager (SLKPerson)


+ (NSURLSessionDataTask *)getPersonsListSuccessBlock:(void (^)(NSArray *items))successBlock failureBlock:(void (^)(NSError *error))failureBlock
{
    NSDictionary *parameters = @{ @"token": [self APIToken] };
    return [[self sharedManager] GET:StringFormat(@"users.list")
                          parameters:parameters
                            progress:nil
                             success: ^(NSURLSessionDataTask *_Nonnull task, id _Nonnull responseObject)
            {
                NSArray *propertyList = responseObject[@"members"];
                [MagicalRecord saveWithBlockAndWait: ^(NSManagedObjectContext *localContext) {
                    [GRTJSONSerialization objectsWithEntityName:[SLKPerson entityName] fromJSONArray:propertyList inContext:localContext error:nil];
                }];
                NSArray *items = [SLKPerson MR_findAll];
                if (successBlock) {
                    successBlock(items);
                }
            }
                             failure: ^(NSURLSessionDataTask *_Nonnull task, NSError *_Nonnull error)
            {
                if (failureBlock) {
                    failureBlock(error);
                }
            }];
}
@end
