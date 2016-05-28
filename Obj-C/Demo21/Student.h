#import <Foundation/Foundation.h>
#import "Sports.h"
#import "Person.h"

//@interface Student : NSObject <Sports>
@interface Student : Person
// 父类遵守了某个协议，那么子类也会自动遵守这个协议
@end
