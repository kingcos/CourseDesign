#import "Person.h"

@implementation Person
// 固定格式重写 init
- (instancetype)init {
    // 初始化父类并判断父类是否初始化成功（成功：返回对应地址；失败：返回 nil）
    if (self = [super init]) {
        // 初始化子类
        _age = 10;
    }
    // 返回当前对象的地址
    return self;
}
@end
