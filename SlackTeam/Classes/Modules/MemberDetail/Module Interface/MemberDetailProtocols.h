//
//  MemberDetailProtocols.h
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 12/14/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SLKPerson;


@protocol MemberDetailDataManagerAPIInput <NSObject>

@end


@protocol MemberDetailDataManagerLocalInput <NSObject>

@end


@protocol MemberDetailInteractorInput <NSObject>

@end


@protocol MemberDetailInteractorOutput <NSObject>

@end


@protocol MemberDetailModuleInterface <NSObject>
@property (nonatomic, strong) SLKPerson *item;
- (void)viewDidLoad;
- (void)didSelectBackButton;
@end


@protocol MemberDetailViewInterface <NSObject>
- (void)setItem:(SLKPerson *)item;
@end


@protocol MemberDetailWireframeInput <NSObject>
- (void)presentMemberDetailInterface:(SLKPerson *)item fromPoint:(CGPoint)point fromVC:(UITableViewController *)vc;
- (void)dismissMemberDetailInterface;
@end


@protocol MemberDetailDelegate <NSObject>

@end