//
//  UIColor+Transform.h
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 5/6/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIColor (Transform)
// Assumes input like "#00FF00" (#RRGGBB).
+ (UIColor *)colorFromHexString:(NSString *)hexString;
+ (NSString *)hexStringFromColor:(UIColor *)color;
@end
