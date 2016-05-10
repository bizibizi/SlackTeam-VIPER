//
//  MemberDetailWireframe.h
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import "RootWireframe.h"
#import "MemberDetailProtocols.h"
@class MemberDetailPresenter;


@interface MemberDetailWireframe : RootWireframe <MemberDetailWireframeInput>
@property (nonatomic, strong) MemberDetailPresenter *presenter;
@end
