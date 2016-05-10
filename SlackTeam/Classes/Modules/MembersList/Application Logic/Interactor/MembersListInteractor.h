//
//  MembersListInteractor.h
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MembersListProtocols.h"
@class MembersListDataManagerAPI;
@class MembersListDataManagerLocal;


@interface MembersListInteractor : NSObject <MembersListInteractorInput>
@property (nonatomic, strong) MembersListDataManagerAPI *dataManagerAPI;
@property (nonatomic, strong) MembersListDataManagerLocal *dataManagerLocal;
@property (nonatomic, weak) id <MembersListInteractorOutput> output;
@end
