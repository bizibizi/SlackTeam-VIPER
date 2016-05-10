//
//  AppDependencies.h
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 9/28/15.
//  Copyright © 2015 SlackTeam. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AppDependencies : NSObject
- (void)installRootViewControllerIntoWindow:(UIWindow *)window;
- (void)deallocDependencies;
@end