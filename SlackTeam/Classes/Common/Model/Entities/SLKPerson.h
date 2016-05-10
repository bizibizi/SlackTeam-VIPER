#import "_SLKPerson.h"

@interface SLKPerson : _SLKPerson


@property (nonatomic, strong, nullable) UIColor *color;
@property (nonatomic, strong, nullable) NSURL *imageURL;
@property (nonatomic, readonly) BOOL isBot;
@property (nonatomic, copy, readonly, nonnull) NSString *description;

@end
