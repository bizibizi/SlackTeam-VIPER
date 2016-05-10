//
//  AppTheme.m
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 5/8/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

#import "AppTheme.h"
#import "UIColor+ThemeColors.h"


@implementation AppTheme


+ (void)applyTheme
{
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setBarTintColor:[UIColor mainThemeDark]];
}

@end
