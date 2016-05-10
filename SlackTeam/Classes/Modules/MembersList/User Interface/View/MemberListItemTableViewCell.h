//
//  MemberListItemTableViewCell.h
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 5/6/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SLKPerson;


@interface MemberListItemTableViewCell : UITableViewCell

+ (NSString *)reuseIdentifier;
@property (nonatomic, weak) SLKPerson *item;

@end
