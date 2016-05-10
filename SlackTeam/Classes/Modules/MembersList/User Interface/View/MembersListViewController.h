//
//  MembersListViewController.h
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MembersListProtocols.h"


@interface MembersListViewController : UITableViewController <MembersListViewInterface>
@property (nonatomic, strong) id <MembersListModuleInterface> eventHandler;
@end
