#import "Wife.h"

@implementation Wife
- (void)cook {
    NSLog(@"%s", __func__);
}

- (void)wash {
    NSLog(@"%s", __func__);
}

// 有限定，且判断，会警告，但是不会报错
//- (void)work {
//    NSLog(@"%s", __func__);
//}
@end
