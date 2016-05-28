#import <Foundation/Foundation.h>
#import "Sports.h"
#import "Study.h"

@interface Person : NSObject <Sports, Study>
//- (void)playFootball;
// 在 Obj-C 中一个类可以遵守一个或多个协议
// 但 Obj-C 中的类只能有一个父类，即只有单继承
@end
