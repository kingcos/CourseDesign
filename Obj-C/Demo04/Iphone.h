#import <Foundation/Foundation.h>
#import "Phone.h"

@interface Iphone : Phone {
    // 属性不能重写
//    double _size;
}
// 方法可以重写
+ (void)phoneInfo;
@end
