//
//  MembersListPresenter.h
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MembersListProtocols.h"
@class MembersListWireframe;


@interface MembersListPresenter : NSObject <MembersListModuleInterface, MembersListInteractorOutput>
@property (nonatomic, strong) MembersListWireframe *wireframe;
@property (nonatomic, weak) UITableViewController <MembersListViewInterface> *userInterface;
@property (nonatomic, strong) id <MembersListInteractorInput> interactor;
@end
