#import <Foundation/Foundation.h>
#import "Tool.h"

int main(int argc, const char * argv[]) {
    // 内部调用：allocWithZone:
    Tool *t1 = [[Tool alloc] init];
    // 内部：[[Tool alloc] init];
    Tool *t2 = [Tool new];
    // 内部：[[Tool alloc] init];
    Tool *t3 = [Tool shareTool];
    
    Tool *t4 = [Tool copy];
    Tool *t5 = [Tool mutableCopy];
    
    NSLog(@"\n%p\n%p\n%p\n%p\n%p", t1, t2, t3, t4, t5);
    
    
    
    // 编译时判断当前是否是ARC
    /*
    #if __has_feature(objc_arc)
        NSLog(@"ARC");
    #else
        NSLog(@"MRC");
    #endif
    */
    return 0;
}
