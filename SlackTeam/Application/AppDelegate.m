//
//  AppDelegate.m
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 5/6/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDependencies.h"


@interface AppDelegate () 
@end


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.appDependencies = [[AppDependencies alloc] init];
    [self.appDependencies installRootViewControllerIntoWindow:self.window];
    
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [self.appDependencies deallocDependencies];
}

 


@end
