//
//  RoundImageView.m
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 5/6/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

#import "RoundImageView.h"


@implementation RoundImageView


#pragma mark - LifeCycle


- (void)layoutSubviews
{
    [super layoutSubviews];
    [self layoutBounds];
}

- (void)layoutBounds
{
    self.layer.cornerRadius =  CGRectGetWidth(self.frame) / 2;
    self.clipsToBounds = YES;
    self.layer.borderWidth = 5.0;
}


@end
