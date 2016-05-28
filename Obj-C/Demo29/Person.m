#import "Person.h"

@implementation Person
- (NSString *)description {
    return [NSString stringWithFormat:@"%i %@", _age, _name];
}

- (id)copyWithZone:(NSZone *)zone {
    // 创建一个新的对象
    Person *p = [[[self class] allocWithZone:zone] init];
    
    // 设置当前对象的内容给新的对象
    p.age = _age;
    p.name = _name;
    
    // 返回新的对象
    return p;
}
@end
