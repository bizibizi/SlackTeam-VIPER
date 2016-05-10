#import "SLKPerson.h"
#import "UIColor+Transform.h"


@interface SLKPerson ()
@end


@implementation SLKPerson
@dynamic color, imageURL, isBot, description;


+ (void)load
{
    [super load];
    
    [NSValueTransformer grt_setValueTransformerWithName:@"Person.StringToColor"
                                         transformBlock: ^id (NSString *value) {
        return [UIColor colorFromHexString:[NSString stringWithFormat:@"#%@", value]];
    }
                                  reverseTransformBlock: ^id (UIColor *value) {
                                      return [UIColor hexStringFromColor:value];
                                  }];
    
    [NSValueTransformer grt_setValueTransformerWithName:@"Person.StringToURL"
                                         transformBlock: ^id (NSString *value) {
                                             return [NSURL URLWithString:value];
                                         }
                                  reverseTransformBlock: ^id (NSURL *value) {
                                      return value.absoluteString;
                                  }];
}

- (BOOL)isBot
{
    return [self.username isEqualToString:@"slackbot"] ? YES : NO;
}

- (NSString *)description
{
    NSMutableString *description = [[NSMutableString alloc] init];
    if (self.fullName) {
        [description appendString:self.fullName];
        [description appendString:@"\n"];
    }
    if (self.title) {
        [description appendString:[NSString stringWithFormat:@"Role: %@", self.title]];
        [description appendString:@"\n"];
    }
    [description appendString:@"\nContacts\n"];
    if (self.username) {
        [description appendString:[NSString stringWithFormat:@"Slack: @%@", self.username]];
        [description appendString:@"\n"];
    }
    if (self.phone) {
        [description appendString:[NSString stringWithFormat:@"Phone: %@", self.phone]];
        [description appendString:@"\n"];
    }
    if (self.skype) {
        [description appendString:[NSString stringWithFormat:@"Skype: %@", self.skype]];
        [description appendString:@"\n"];
    }
    if (self.email) {
        [description appendString:[NSString stringWithFormat:@"Email: %@", self.email]];
        [description appendString:@"\n"];
    }
    return [description copy];
}

@end
