#import "Person.h"

@implementation Person
+ (instancetype)person {
    // 子类创建对象会报错
//    return [[Person alloc] init];
    // 若有自定义类工厂方法，在其中创建对象一定不要使用类名来创建，一定要使用 self 来创建
    // 谁调用当前方法，self 就代表谁
    return [[self alloc] init];
}
+(instancetype)personWith:(int)age {
//    Person *p = [[Person alloc] init];
    Person *p = [[self alloc] init];
    p.age = age;
    return p;
}
@end
