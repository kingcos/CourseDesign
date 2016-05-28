#import "Store.h"

@implementation Store
+ (Bottle *)buyBottle {
    // new 创建的对象存储在堆中，不会自动释放
    return [Bottle new];
}

+ (Water *)buyWater {
    Water *w = [Water new];
    while (![w isBoiled]) {
        [w boil];
    }
    return w;
}
@end
