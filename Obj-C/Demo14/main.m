#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

void demo(Class c);

int main(int argc, const char * argv[]) {
    Person *p1 = [[Person alloc] init];
    // 获取类对象
    // [实例对象 class];
    // [类名 class];
    
    // 一个类在内存中只有一份类对象
    Class c1 = [p1 class];
    Class c2 = [Person class];
    NSLog(@"c1 = %p, c2 = %p", c1, c2);
    
    // 可以通过类对象创建实例对象
    Person *p2 = [[c1 alloc] init];
    p2.age = 30;
    NSLog(@"%i", p2.age);
    
    // 调用类方法
//    [Person test];
    [c1 test];
    
    demo(c1);
    demo([Student class]);
    
    Person *p3 = [[Person alloc] init];
    
    
    return 0;
}

void demo(Class c) {
    id obj = [[c alloc] init];
    NSLog(@"%@", obj);
}