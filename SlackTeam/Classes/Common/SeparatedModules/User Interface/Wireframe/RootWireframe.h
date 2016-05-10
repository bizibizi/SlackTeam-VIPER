//
//  Wireframe.h
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import <UIKit/UIkit.h>


@interface RootWireframe : NSObject

- (void)showRootViewController:(UIViewController *)viewController inWindow:(UIWindow *)window;

- (id)createViewControllerFromXib:(NSString *)xib;
- (id)createViewControllerWithKey:(NSString *)key;

- (void)presentOkAlertFromViewController:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message okHandler:(void (^)(UIAlertAction *action))okHandler;

@end