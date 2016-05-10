//
//  SLKNetworkManager.h
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 5/6/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>


#define StringFormat(fmt, ...) [NSString stringWithFormat: fmt, ## __VA_ARGS__]


@interface SLKNetworkManager : AFHTTPSessionManager
+ (SLKNetworkManager *)sharedManager;
+ (NSString *)APIToken;

@end
