//
//  MemberDetailWireframe.m
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import "MemberDetailWireframe.h"
#import "MemberDetailDataManagerAPI.h"
#import "MemberDetailDataManagerLocal.h"
#import "MemberDetailInteractor.h"
#import "MemberDetailPresenter.h"
#import "MemberDetailViewController.h"
#import "SLKPerson.h"
@import BIZCircularTransition;


static NSString *const kMemberDetailViewControllerKey = @"MemberDetailViewController";


@interface MemberDetailWireframe ()
@property (nonatomic, strong) UIViewController *presentedViewController;
@property (nonatomic, strong) BIZCircularTransitionHandler *circularTransitionHandler;
@end


@implementation MemberDetailWireframe


- (void)presentMemberDetailInterface:(SLKPerson *)item fromPoint:(CGPoint)point fromVC:(UITableViewController *)viewController
{
    self.presentedViewController = viewController;
    
    MemberDetailViewController *userInterface = [self createViewControllerWithKey:kMemberDetailViewControllerKey];
    MemberDetailInteractor *interactor = [[MemberDetailInteractor alloc] init];
    MemberDetailDataManagerAPI *dataManagerAPI = [[MemberDetailDataManagerAPI alloc] init];
    MemberDetailDataManagerLocal *dataManagerLocal = [[MemberDetailDataManagerLocal alloc] init];
    self.presenter = [[MemberDetailPresenter alloc] init];
    
    self.presenter.wireframe = self;
    self.presenter.interactor = interactor;
    self.presenter.userInterface = userInterface;
    
    interactor.dataManagerAPI = dataManagerAPI;
    interactor.dataManagerLocal = dataManagerLocal;
    interactor.output  = self.presenter;
    
    userInterface.eventHandler = self.presenter;

    UINavigationController *navigationUserInterface = [[UINavigationController alloc] initWithRootViewController:userInterface];
    
    self.circularTransitionHandler = [[BIZCircularTransitionHandler alloc] init];
    [self.circularTransitionHandler transitionWithDestinationViewController:navigationUserInterface initialTransitionPoint:point];
    
    self.presenter.item = item;
    
    [viewController presentViewController:navigationUserInterface animated:YES completion:nil];
}

- (void)dismissMemberDetailInterface
{
    [self.presentedViewController dismissViewControllerAnimated:YES completion:nil];
}



@end
