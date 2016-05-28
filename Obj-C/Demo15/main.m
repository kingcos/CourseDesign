#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"

int main(int argc, const char * argv[]) {
    // 配合对象／类来检查对象／类中有没有实现某一个方法
    SEL sel1 = @selector(setAge:);
    Person *p = [Person new];
    // 判断 p 对象中有没有实现 - 开头的 setAge: 方法
    NSLog(@"%i", [p respondsToSelector:sel1]);
    // 判断 Person 类中有没有实现 + 开头的 new 方法
    SEL sel2 = @selector(new);
    NSLog(@"%i", [Person respondsToSelector:sel2]);
    
    // 配合对象／类来调用某一个 SEL 方法
    SEL sel3 = @selector(demo);
    [p performSelector:sel3];
    // 如果通过 performSelector 调用有参数的方法，那么参数必须是对象类型
    // 因为 withObject 只能传递一个对象，performSelector 最多只能传递 2 个参数
    SEL sel4 = @selector(demoWithString:);
    [p performSelector:sel4 withObject:@"666"];
    
    // 配合对象将 SEL 类型作为方法的形参
    Car *c = [Car new];
    SEL sel = @selector(run);
    
    Person *p2 = [Person new];
    [p2 genObject:c andSel:sel];
    return 0;
}
