#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    // 利用 %@ 打印类对象，即调用 + (NSString *)description;
    Class c = [Student class];
    NSLog(@"当前类的类对象：%@", c);
    NSLog(@"当前类的类对象：%@", [Student class]);
    
    
    Student *s = [Student new];
    // 利用 %@ 打印实例对象，即调用 - (NSString *)description;
    NSLog(@"description: %@", s);
    
    
    NSLog(@"当前对象的地址：%p", s);
    return 0;
}
