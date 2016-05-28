#import <Foundation/Foundation.h>
#import "Person.h"
#import "Animal.h"

int main(int argc, const char * argv[]) {
    {
        // 默认所有指针变量都是强指针
        Person *p = [[Person alloc] init];
        // p 对象 } 前释放
    }
    {
        __strong Person *p1 = [[Person alloc] init];
        // 释放对象：
        // p1 = nil;
        __weak Person *p2 = p1;
    }
    // 在开发中，不要使用弱指针保存刚刚创建的对象，因为会被立即释放
    __weak Person *p = [[Person alloc] init];
    NSLog(@"-----");
    Person *p1 = [[Person alloc] init];
    Animal *a1 = [[Animal alloc] init];
    
    p1.animal = a1;
    
    // a1 p1 销毁
//    a1 = nil;
//    p1 = nil;
    
    // 循环引用
    a1.person = p1;
    // a1, p1 循环引用，无法销毁
    a1 = nil;
    p1 = nil;
    
    
    
    return 0;
}
