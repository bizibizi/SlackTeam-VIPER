//
//  SLKNetworkManager.m
//  SlackTeam
//
//  Created by IgorBizi@mail.ru on 5/6/16.
//  Copyright © 2016 IgorBizi@mail.ru. All rights reserved.
//

#import "SLKNetworkManager.h"
#import <AFNetworking/AFNetworkActivityIndicatorManager.h>


static NSString *SLKBaseURL = @"https://slack.com/api/";
static NSString *SLKAPIToken = @"xoxp-4698769766-4698769768-18910479235-8fa82d53b2";


@implementation SLKNetworkManager


+ (instancetype)manager
{
    return [[self alloc] initWithBaseURL:[NSURL URLWithString:SLKBaseURL]];
}

+ (NSString *)APIToken
{
    return SLKAPIToken;
}

- (instancetype)initWithBaseURL:(NSURL *)url
{
    self = [super initWithBaseURL:url];
    if (self) {
        self.requestSerializer = [AFJSONRequestSerializer serializer];
        self.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    
    return self;
}


#pragma mark - Shared Manager


+ (SLKNetworkManager *)sharedManager
{
    static SLKNetworkManager *_sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = [SLKNetworkManager manager];
    });
    
    return _sharedManager;
}


#pragma mark - Load


+ (void)load
{
#ifdef PRINT_VERBOSE_INFORMATION
    [AFNetworkActivityLogger sharedLogger].level = AFLoggerLevelDebug;
    [[AFNetworkActivityLogger sharedLogger] startLogging];
#endif
    
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}


@end
