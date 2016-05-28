#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;
+ (instancetype)person;
+ (instancetype)personWith:(int)age;
@end
