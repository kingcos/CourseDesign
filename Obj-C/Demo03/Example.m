#import "Example.h"

@implementation Person
- (void)testSelfObjectMethod {
    [self test];
}
- (void)test {
    NSLog(@"Test");
    // 死循环
//    [self test];
}
+ (void)selfClassMethodDemo {
    [self demo];
}

+ (void)demo {
    NSLog(@"Demo");
    // 死循环
//    [self demo];
}

- (void)setExpVar:(int)expVar {
    // self 可以用于区分成员变量和局部变量同名的情况
    // 但 Xcode 会有警告，因此不推荐
    self->expVar = expVar;
}
- (int)expVar {
    return self->expVar;
}
@end