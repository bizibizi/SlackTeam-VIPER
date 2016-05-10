//
//  MembersListAPIDataManager.m
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import "MembersListDataManagerAPI.h"
#import "SLKNetworkManager+SLKPerson.h"


@interface MembersListDataManagerAPI ()
@end


@implementation MembersListDataManagerAPI


- (void)loadList:(void (^)(NSArray *items, NSError *error))completion
{
    [SLKNetworkManager getPersonsListSuccessBlock:^(NSArray *items) {
        completion(items, nil);
    } failureBlock:^(NSError *error) {
        completion(nil, error);
    }];
}


@end
