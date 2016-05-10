//
//  AppDependencies.m
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 9/28/15.
//  Copyright © 2015 SlackTeam. All rights reserved.
//

#import "AppDependencies.h"
#import "MembersListWireframe.h"
#import "AppTheme.h"


@interface AppDependencies ()
@property (nonatomic, strong) MembersListWireframe *membersListWireframe;
@end


@implementation AppDependencies


#pragma mark - LifeCycle


- (instancetype)init
{
    if ((self = [super init])) {
        [self configureDependencies];
    }

    return self;
}

- (void)configureDependencies
{
    [AppTheme applyTheme];
    
    [MagicalRecord setupCoreDataStackWithStoreNamed:@"SlackTeam"];
    
    self.membersListWireframe = [[MembersListWireframe alloc] init];
}

- (void)deallocDependencies
{
    [MagicalRecord cleanUp];
}

- (void)installRootViewControllerIntoWindow:(UIWindow *)window
{
    [self.membersListWireframe presentMembersListInterfaceFromWindow:window];
}

@end