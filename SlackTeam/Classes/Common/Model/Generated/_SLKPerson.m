// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SLKPerson.m instead.

#import "_SLKPerson.h"

@implementation SLKPersonID
@end

@implementation _SLKPerson

+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Person" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Person";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Person" inManagedObjectContext:moc_];
}

- (SLKPersonID*)objectID {
	return (SLKPersonID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic color;

@dynamic email;

@dynamic fullName;

@dynamic id;

@dynamic imageURL;

@dynamic phone;

@dynamic skype;

@dynamic timezone;

@dynamic title;

@dynamic username;

@end

@implementation SLKPersonAttributes 
+ (NSString *)color {
	return @"color";
}
+ (NSString *)email {
	return @"email";
}
+ (NSString *)fullName {
	return @"fullName";
}
+ (NSString *)id {
	return @"id";
}
+ (NSString *)imageURL {
	return @"imageURL";
}
+ (NSString *)phone {
	return @"phone";
}
+ (NSString *)skype {
	return @"skype";
}
+ (NSString *)timezone {
	return @"timezone";
}
+ (NSString *)title {
	return @"title";
}
+ (NSString *)username {
	return @"username";
}
@end

@implementation SLKPersonUserInfo 
+ (NSString *)identityAttribute {
	return @"id";
}
@end

