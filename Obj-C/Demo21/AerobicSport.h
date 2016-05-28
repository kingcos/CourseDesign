#import <Foundation/Foundation.h>
#import "Sports.h"

@protocol AerobicSport <Sports>
// Obj-C 中的协议又可以遵守其它协议，只要一个协议遵守了其它协议，那么这个协议中就会自动包含其它协议的声明
- (void)playYoga;
@end
