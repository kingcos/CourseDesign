#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    Person *p = [Person new];
    // test 只有实现没有声明（私有方法）
    // 但不是真正的私有：
    [p performSelector:@selector(test)];
    return 0;
}
