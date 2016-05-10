//
//  Wireframe.m
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import "RootWireframe.h"


@implementation RootWireframe


- (void)showRootViewController:(UIViewController *)viewController inWindow:(UIWindow *)window
{
    UINavigationController *navigationController = [self navigationControllerFromWindow:window];
    navigationController.viewControllers = @[viewController];
}

- (UINavigationController *)navigationControllerFromWindow:(UIWindow *)window
{
    UINavigationController *navigationController = (UINavigationController *)[window rootViewController];

    return navigationController;
}

- (void)presentOkAlertFromViewController:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message okHandler:(void (^)(UIAlertAction *action))okHandler
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *actionOk = [UIAlertAction actionWithTitle:NSLocalizedString(@"OK", @"") style:UIAlertActionStyleDefault handler:okHandler];
    [alertController addAction:actionOk];
    [viewController presentViewController:alertController animated:YES completion:nil];
}


#pragma mark - Create ViewControllers


- (id)createViewControllerWithKey:(NSString *)key
{
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIViewController *viewController = [storyboard instantiateViewControllerWithIdentifier:key];
    if (!viewController) {
        NSLog(@"ERROR: createViewControllerWithKey");
    }
    return viewController;
}

- (id)createViewControllerFromXib:(NSString *)xib
{
    return [[[NSBundle mainBundle] loadNibNamed:xib owner:nil options:nil] firstObject];
}

@end