#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    Person *p2 = [Person alloc];
    Person *p3 = [p2 init];
    
    Person *p = [[Person alloc] init];
    
    // alloc & init 返回地址相同
    NSLog(@"%p %p", p2, p3);
    
    NSLog(@"p1.age = %i p3.age = %i p.age = %i", p1.age, p3.age, p.age);
    
    /*
     // 当前若返回 instancetype/id 类型，那么将返回值赋值给其它对象会警告报错
     NSString *str = [[Person alloc] init];
     NSUInteger length = [str length];
     NSLog(@"%lu", length);
    */
    
    // id 可以定义变量
    id p4 = [[Person alloc] init];
    
    return 0;
}
