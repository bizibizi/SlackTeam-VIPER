//
//  UIColor+ThemeColors.m
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 5/8/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

#import "UIColor+ThemeColors.h"
#import "UIColor+Transform.h"


@implementation UIColor (ThemeColors)


+ (UIColor *)mainThemeDark
{
    return [UIColor colorFromHexString:@"#54364F"];
}

+ (UIColor *)borderFromColor:(UIColor *)color
{
    return [color colorWithAlphaComponent:0.5];
}

+ (UIColor *)backgroudFromColor:(UIColor *)color
{
    return [color colorWithAlphaComponent:0.15];
}

@end
