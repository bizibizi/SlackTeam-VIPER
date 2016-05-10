// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to SLKPerson.h instead.

#if __has_feature(modules)
    @import Foundation;
    @import CoreData;
#else
    #import <Foundation/Foundation.h>
    #import <CoreData/CoreData.h>
#endif

NS_ASSUME_NONNULL_BEGIN

@class NSObject;

@class NSObject;

@interface SLKPersonID : NSManagedObjectID {}
@end

@interface _SLKPerson : NSManagedObject
+ (instancetype)insertInManagedObjectContext:(NSManagedObjectContext *)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) SLKPersonID *objectID;

@property (nonatomic, strong, nullable) id color;

@property (nonatomic, strong, nullable) NSString* email;

@property (nonatomic, strong, nullable) NSString* fullName;

@property (nonatomic, strong, nullable) NSString* id;

@property (nonatomic, strong, nullable) id imageURL;

@property (nonatomic, strong, nullable) NSString* phone;

@property (nonatomic, strong, nullable) NSString* skype;

@property (nonatomic, strong, nullable) NSString* timezone;

@property (nonatomic, strong, nullable) NSString* title;

@property (nonatomic, strong, nullable) NSString* username;

@end

@interface _SLKPerson (CoreDataGeneratedPrimitiveAccessors)

- (id)primitiveColor;
- (void)setPrimitiveColor:(id)value;

- (NSString*)primitiveEmail;
- (void)setPrimitiveEmail:(NSString*)value;

- (NSString*)primitiveFullName;
- (void)setPrimitiveFullName:(NSString*)value;

- (NSString*)primitiveId;
- (void)setPrimitiveId:(NSString*)value;

- (id)primitiveImageURL;
- (void)setPrimitiveImageURL:(id)value;

- (NSString*)primitivePhone;
- (void)setPrimitivePhone:(NSString*)value;

- (NSString*)primitiveSkype;
- (void)setPrimitiveSkype:(NSString*)value;

- (NSString*)primitiveTimezone;
- (void)setPrimitiveTimezone:(NSString*)value;

- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;

- (NSString*)primitiveUsername;
- (void)setPrimitiveUsername:(NSString*)value;

@end

@interface SLKPersonAttributes: NSObject 
+ (NSString *)color;
+ (NSString *)email;
+ (NSString *)fullName;
+ (NSString *)id;
+ (NSString *)imageURL;
+ (NSString *)phone;
+ (NSString *)skype;
+ (NSString *)timezone;
+ (NSString *)title;
+ (NSString *)username;
@end

@interface SLKPersonUserInfo: NSObject 
+ (NSString *)identityAttribute;
@end

NS_ASSUME_NONNULL_END
