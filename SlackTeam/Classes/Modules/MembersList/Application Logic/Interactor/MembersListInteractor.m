//
//  MembersListInteractor.m
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import "MembersListInteractor.h"
#import "MembersListDataManagerAPI.h"
#import "MembersListDataManagerLocal.h"


@interface MembersListInteractor ()
@end


@implementation MembersListInteractor



#pragma mark - MembersListInteractorInput


- (void)loadList
{
    __weak typeof(self) weakSelf = self;
    [self.dataManagerLocal loadList:^(NSArray *items, NSError *error) {
        [weakSelf.output didLoadListItems:items error:error];
    }];
    [self.dataManagerAPI loadList:^(NSArray *items, NSError *error) {
        [weakSelf.output didLoadListItems:items error:error];
    }];
}

@end
