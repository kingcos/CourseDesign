#import <Foundation/Foundation.h>
#import "Person.h"
#import "Wife.h"
#import "WifeSelector.h"

int main(int argc, const char * argv[]) {
    Person *p = [Person new];
    // 将协议写在数据类型的右边，明确的标注如果想给该变量赋值，那么该对象必须遵守某个协议
//    Wife<WifeSelector> *w = [Wife new];
    Wife *w = [Wife new];
    p.wife = w;
    [p show];
    return 0;
}
