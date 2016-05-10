//
//  SLKNetworkManager+SLKPerson.h
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 5/6/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

#import "SLKNetworkManager.h"


@interface SLKNetworkManager (SLKPerson)


+ (NSURLSessionDataTask *)getPersonsListSuccessBlock:(void (^)(NSArray *items))successBlock failureBlock:(void (^)(NSError *error))failureBlock;
@end
