#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying, NSMutableCopying>
// 字符串属性都使用 copy，copy 可以防止外界修改内部的数据
@property(nonatomic, copy) NSString *name;
@property (nonatomic, assign) int age;
@end
