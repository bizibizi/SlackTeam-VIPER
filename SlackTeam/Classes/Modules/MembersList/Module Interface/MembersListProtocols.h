//
//  MembersListProtocols.h
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 12/14/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SLKPerson;


@protocol MembersListDataManagerAPIInput <NSObject>
- (void)loadList:(void (^)(NSArray *items, NSError *error))completion;
@end


@protocol MembersListDataManagerLocalInput <NSObject>
- (void)loadList:(void (^)(NSArray *items, NSError *error))completion;
@end


@protocol MembersListInteractorInput <NSObject>
- (void)loadList;
@end


@protocol MembersListInteractorOutput <NSObject>
- (void)didLoadListItems:(NSArray *)items error:(NSError *)error;
@end


@protocol MembersListModuleInterface <NSObject>
- (void)viewDidLoad;
- (void)didTriggerRefresh;
- (void)didSelectTeamMember:(SLKPerson *)item atCell:(UITableViewCell *)cell;
@end


@protocol MembersListViewInterface <NSObject>
- (void)showListRefreshing:(BOOL)flag;
- (void)setListItems:(NSArray *)items;
@end


@protocol MembersListWireframeInput <NSObject>
- (void)presentMembersListInterfaceFromWindow:(UIWindow *)window;
- (void)presentMemberDetailInterface:(SLKPerson *)item fromPoint:(CGPoint)point;
@end


@protocol MembersListDelegate <NSObject>

@end