//
//  MembersListWireframe.m
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import "MembersListWireframe.h"
#import "MembersListDataManagerAPI.h"
#import "MembersListDataManagerLocal.h"
#import "MembersListInteractor.h"
#import "MembersListPresenter.h"
#import "MembersListViewController.h"
#import "MemberDetailViewController.h"
#import "MemberDetailWireframe.h"


static NSString *const kMembersListViewControllerKey = @"MembersListViewContoller";


@interface MembersListWireframe ()
@property (nonatomic, strong) MembersListViewController *userInterface;
@end


@implementation MembersListWireframe


- (void)presentMembersListInterfaceFromWindow:(UIWindow *)window
{    
    self.userInterface = [self createViewControllerWithKey:kMembersListViewControllerKey];
    MembersListInteractor *interactor = [[MembersListInteractor alloc] init];
    MembersListDataManagerAPI *dataManagerAPI = [[MembersListDataManagerAPI alloc] init];
    MembersListDataManagerLocal *dataManagerLocal = [[MembersListDataManagerLocal alloc] init];
    self.presenter = [[MembersListPresenter alloc] init];
    
    self.presenter.wireframe = self;
    self.presenter.interactor = interactor;
    self.presenter.userInterface = self.userInterface;
    
    interactor.dataManagerAPI = dataManagerAPI;
    interactor.dataManagerLocal = dataManagerLocal;
    interactor.output = self.presenter;
    
    self.userInterface.eventHandler = self.presenter;
    
    [self showRootViewController:self.userInterface inWindow:window];
}

- (void)presentMemberDetailInterface:(SLKPerson *)item fromPoint:(CGPoint)point
{
    self.memberDetailWireframe = [[MemberDetailWireframe alloc] init];
    [self.memberDetailWireframe presentMemberDetailInterface:item fromPoint:point fromVC:self.userInterface];
}



@end
