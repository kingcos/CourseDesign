#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    /*
     // 静态数据类型：
     NSObject *obj1 = [Animal new];
     // 不能调用子类特有的方法
     [obj1 eat];
    */
    
    id obj2 = [Animal new];
    [obj2 eat];
    // test 私有方法也可被调用，编译成功，但当前版本 Xcode 会报运行时错误
//    [obj2 test];
    
    // isKindOfClass: 判断指定的对象是否是某一个类，或者是某一个类的子类
    if ([obj2 isKindOfClass:[Dog class]]) {
        [obj2 bark];
    }
    
    obj2 = [Dog new];
    // isMemberOfClass: 判断指定的对象是否是当前指定的类的实例（不包含子类）
    if ([obj2 isMemberOfClass:[Dog class]]) {
        [obj2 bark];
    }
    return 0;
}
