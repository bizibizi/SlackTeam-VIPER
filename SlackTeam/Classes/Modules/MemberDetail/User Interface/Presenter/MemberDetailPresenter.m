//
//  MemberDetailPresenter.m
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import "MemberDetailPresenter.h"
#import "MemberDetailInteractor.h"
#import "MemberDetailWireframe.h"


@interface MemberDetailPresenter ()
@end


@implementation MemberDetailPresenter


#pragma mark - MemberDetailModuleInterface


- (void)viewDidLoad
{
    [self.userInterface setItem:self.item];
}

- (void)didSelectBackButton
{
    [self.wireframe dismissMemberDetailInterface];
}


#pragma mark - MemberDetailInteractorOutput


@end
