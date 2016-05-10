//
//  MembersListWireframe.h
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import "RootWireframe.h"
#import "MembersListProtocols.h"
@class MembersListPresenter, MemberDetailWireframe;


@interface MembersListWireframe : RootWireframe <MembersListWireframeInput>
@property (nonatomic, strong) MembersListPresenter *presenter;
@property (nonatomic, strong) MemberDetailWireframe *memberDetailWireframe;
@end
