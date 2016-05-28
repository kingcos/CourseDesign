#import "Person+Demo.h"

@implementation Person (Demo)
// 实现扩充方法
- (void)play {
    NSLog(@"Play");
}
// 可以在分类中访问原有类中 .h 中的属性
- (void)visitWeight {
    NSLog(@"weight = %f", _weight);
}

- (void)say {
    NSLog(@"%s", __func__);
}
@end
