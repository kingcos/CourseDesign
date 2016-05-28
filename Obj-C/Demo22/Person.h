#import <Foundation/Foundation.h>
#import "Wife.h"

@interface Person : NSObject
// 直接在 @property 限定：类型限定是写在数据类型的右边的
@property(nonatomic, strong) Wife<WifeSelector> *wife;

- (void)show;
@end
