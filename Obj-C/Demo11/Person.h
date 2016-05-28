#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;
// id 可以作为形参，而 instancetype 不可
- (void)test:(id)obj;
// - (void)test:(instancetype)obj;
@end
