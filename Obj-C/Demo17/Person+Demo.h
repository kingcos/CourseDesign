#import "Person.h"

@interface Person (Demo)
// 错误：在 category 内添加属性，只会生成 `setter/getter` 方法的**声明**，不会生成实现以及私有的成员变量
@property (nonatomic, assign)double height;

// 声明扩充方法
- (void)play;
- (void)visitWeight;
@end
