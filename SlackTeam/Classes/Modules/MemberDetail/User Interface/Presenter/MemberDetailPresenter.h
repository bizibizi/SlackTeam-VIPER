//
//  MemberDetailPresenter.h
//  IgorBiziMineev
//
//  Created by IgorBizi@mail.ru on 10/12/15.
//  Copyright © 2015 IgorBiziMineev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MemberDetailProtocols.h"
@class MemberDetailWireframe;


@interface MemberDetailPresenter : NSObject <MemberDetailModuleInterface, MemberDetailInteractorOutput>
@property (nonatomic, strong) MemberDetailWireframe *wireframe;
@property (nonatomic, weak) UIViewController <MemberDetailViewInterface> *userInterface;
@property (nonatomic, strong) id <MemberDetailInteractorInput> interactor;

@property (nonatomic, strong) SLKPerson *item;
@end
