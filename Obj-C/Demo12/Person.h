#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;
@property NSString *name;

- (instancetype)initWithAge:(int)age;
- (instancetype)initWithName:(NSString *)name;
- (instancetype)initWithAge:(int)age andName:(NSString *)name;
@end
