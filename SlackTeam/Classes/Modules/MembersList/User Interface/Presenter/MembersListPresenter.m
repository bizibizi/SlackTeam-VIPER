//
//  MembersListPresenter.m
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import "MembersListPresenter.h"
#import "MembersListInteractor.h"
#import "MembersListWireframe.h"


@interface MembersListPresenter ()
@property (nonatomic, strong) NSArray *dataSource; // of SLKPerson
@end


@implementation MembersListPresenter


#pragma mark - MembersListModuleInterface


- (void)viewDidLoad
{
    [self.interactor loadList];
}

- (void)didTriggerRefresh
{
    [self.interactor loadList];
}

- (void)didSelectTeamMember:(SLKPerson *)item atCell:(UITableViewCell *)cell
{
    CGPoint point = [self.userInterface.tableView convertPoint:cell.center toView:nil];
    [self.wireframe presentMemberDetailInterface:item fromPoint:point];
}


#pragma mark - MembersListInteractorOutput


- (void)didLoadListItems:(NSArray *)items error:(NSError *)error
{
    [self.userInterface showListRefreshing:NO];
    if (items.count) {
        self.dataSource = [items copy];
        [self.userInterface setListItems:self.dataSource];
    }
    if (error) {
        [self.wireframe presentOkAlertFromViewController:self.userInterface title:@"Error" message:error.localizedDescription okHandler:nil];
    }
}


@end
