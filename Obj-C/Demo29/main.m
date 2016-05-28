#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    // 深拷贝 & 浅拷贝
    /*
    NSString *srcStr1 = @"demo";
    NSMutableString *copyStr1 = [srcStr1 mutableCopy];
    // 源对象和副本对象的内容一致
    // "一般"情况下拷贝会生成一个新的对象
    NSLog(@"%@ %p %@ %p", srcStr1, srcStr1, copyStr1, copyStr1);
    
    NSMutableString *srcStr2 = [NSMutableString stringWithFormat:@"demo"];
    NSMutableString *copyStr2 = [srcStr2 mutableCopy];
    NSLog(@"%@ %p %@ %p", srcStr2, srcStr2, copyStr2, copyStr2);
    
    NSMutableString *srcStr3 = [NSMutableString stringWithFormat:@"demo"];
    NSString *copyStr3 = [srcStr3 copy];
    NSLog(@"%@ %p %@ %p", srcStr3, srcStr3, copyStr3, copyStr3);
    
    NSString *srcStr4 = @"test";
    NSString *copyStr4 = [srcStr4 copy];
    NSLog(@"%@ %p %@ %p", srcStr4, srcStr4, copyStr4, copyStr4);
     */
    
    // copy 用途：可以防止外界修改内部的数据
    /*
    NSMutableString *strM = [NSMutableString stringWithFormat:@"demo"];
    Person *p = [Person new];
    p.name = strM;
    [strM appendString:@"test"];
    NSLog(@"%@", p.name);
    */
    
    // 自定义类使用 copy
    /*
    Person *p1 = [[Person alloc] init];
    p1.age = 20;
    p1.name = @"demo";
    
    Person *p2 = [p1 copy];
    NSLog(@"%@", p2);
    
    Student *stu1 = [[Student alloc] init];
    stu1.age = 20;
    stu1.name = @"demo";
    stu1.height = 1.8;
    NSLog(@"%@", stu1);
    
    Student *stu2 = [stu1 copy];
    NSLog(@"%@", stu2);
    */
    
    
    
    return 0;
}
