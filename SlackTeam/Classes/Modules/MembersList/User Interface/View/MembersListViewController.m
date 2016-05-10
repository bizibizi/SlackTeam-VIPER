//
//  MembersListViewController.m
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import "MembersListViewController.h"
#import "SLKPerson.h"
#import "MemberListItemTableViewCell.h"


@interface MembersListViewController ()

@property (nonatomic, strong) NSArray *dataSource; // of SLKPerson
@end


@implementation MembersListViewController


#pragma mark - LifeCycle


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.eventHandler viewDidLoad];
}


#pragma mark - UITableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MemberListItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[MemberListItemTableViewCell reuseIdentifier] forIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

- (void)configureCell:(MemberListItemTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    cell.item = self.dataSource[indexPath.row];
}


#pragma mark - Events


- (IBAction)refreshAction:(UIRefreshControl *)sender
{
    [self.eventHandler didTriggerRefresh];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
    SLKPerson *item = self.dataSource[indexPath.row];
    [self.eventHandler didSelectTeamMember:item atCell:[tableView cellForRowAtIndexPath:indexPath]];
}


#pragma mark - MembersListViewInterface


- (void)showListRefreshing:(BOOL)flag
{
    flag ? [self.refreshControl beginRefreshing] : [self.refreshControl endRefreshing];
}

- (void)setListItems:(NSArray *)items
{
    _dataSource = items;
    [self reloadData];
}

- (void)reloadData
{
    [self.tableView reloadData];
}

@end
