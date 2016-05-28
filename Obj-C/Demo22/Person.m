#import "Person.h"

@implementation Person
- (void)show {
    
    // 注意：
    // 虽然在接收某一个对象的时候，对这个对象进行了类型限定（限定它必须实现某个协议），但是并不意味着这个对象就真正的实现了该方法，所以每次在调用对象的协议方法时应该进行一次验证
//    [self.wife cook];
//    [self.wife wash];
//    [self.wife work];
    
    if ([self.wife respondsToSelector:@selector(cook)]) {
        [self.wife cook];
    }
    
    if ([self.wife respondsToSelector:@selector(wash)]) {
        [self.wife wash];
    }
    
    if ([self.wife respondsToSelector:@selector(work)]) {
        [self.wife work];
    }
}
@end
