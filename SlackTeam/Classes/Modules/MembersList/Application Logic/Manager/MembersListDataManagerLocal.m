//
//  MembersListLocalDataManager.m
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import "MembersListDataManagerLocal.h"
#import "SLKPerson.h"


@interface MembersListDataManagerLocal ()
@end


@implementation MembersListDataManagerLocal


- (void)loadList:(void (^)(NSArray *items, NSError *error))completion
{
    NSArray *items = [SLKPerson MR_findAll];
    completion(items, nil);
}

@end
