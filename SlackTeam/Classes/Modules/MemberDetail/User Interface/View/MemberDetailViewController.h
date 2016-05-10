//
//  MemberDetailViewController.h
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 5/6/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MemberDetailProtocols.h"


@interface MemberDetailViewController : UIViewController <MemberDetailViewInterface>
@property (nonatomic, strong) id <MemberDetailModuleInterface> eventHandler;
@end
