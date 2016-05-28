#import "Teacher.h"

@implementation Teacher
- (void)playYoga {
    NSLog(@"%s", __func__);
}

- (void)playFootball {
    NSLog(@"%s", __func__);
}

- (void)playBasketball {
    NSLog(@"%s", __func__);
}

// @optional 可以不实现
//- (void)playBaseball {
//    NSLog(@"%s", __func__);
//}
@end
