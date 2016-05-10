//
//  MemberDetailViewController.m
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 5/6/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

#import "MemberDetailViewController.h"
#import "SLKPerson.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "RoundImageView.h"
#import "UIColor+ThemeColors.h"


@interface MemberDetailViewController ()
@property (weak, nonatomic) IBOutlet RoundImageView *avatarImageView;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@end


@implementation MemberDetailViewController


#pragma mark - LifeCycle


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.eventHandler viewDidLoad];
}


#pragma mark - MemberDetailViewInterface


- (void)setItem:(SLKPerson *)item
{
    [self.avatarImageView sd_setImageWithURL:item.imageURL placeholderImage:[UIImage imageNamed:@"placeholder"]];
    self.descriptionLabel.text = item.description;
    if (item.color) {
        self.scrollView.backgroundColor = [UIColor backgroudFromColor:item.color];
        self.avatarImageView.layer.borderColor = [UIColor borderFromColor:item.color].CGColor;
    }
}


#pragma mark - Events


- (IBAction)closeButtonAction:(UIBarButtonItem *)sender
{
    [self.eventHandler didSelectBackButton];
}

@end
