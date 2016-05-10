//
//  MemberListItemTableViewCell.m
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 5/6/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

#import "MemberListItemTableViewCell.h"
#import "SLKPerson.h"
#import <SDWebImage/UIImageView+WebCache.h>
@import QuartzCore;
#import "UIColor+ThemeColors.h"


@interface MemberListItemTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@end


@implementation MemberListItemTableViewCell


#pragma mark - Class


+ (NSString *)reuseIdentifier
{
    return @"MemberListItemTableViewCellIdentifier";
}


#pragma mark - Events


- (void)setItem:(SLKPerson *)item
{
    if (item.fullName) {
        self.nameLabel.text = item.fullName;
    }
    [self.avatarImageView sd_setImageWithURL:item.imageURL placeholderImage:[UIImage imageNamed:@"placeholder"]];

    if (item.color) {
        self.backgroundColor = [UIColor backgroudFromColor:item.color];
        self.avatarImageView.layer.borderColor = [UIColor borderFromColor:item.color].CGColor;
    }

}

@end
