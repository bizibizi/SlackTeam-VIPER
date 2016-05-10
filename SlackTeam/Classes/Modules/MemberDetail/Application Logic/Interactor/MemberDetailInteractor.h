//
//  MemberDetailInteractor.h
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MemberDetailProtocols.h"
@class MemberDetailDataManagerAPI;
@class MemberDetailDataManagerLocal;


@interface MemberDetailInteractor : NSObject <MemberDetailInteractorInput>
@property (nonatomic, strong) MemberDetailDataManagerAPI *dataManagerAPI;
@property (nonatomic, strong) MemberDetailDataManagerLocal *dataManagerLocal;
@property (nonatomic, weak) id <MemberDetailInteractorOutput> output;
@end
