#import "Person.h"

@implementation Person
+ (void)test {
    NSLog(@"test");
}

+ (void)load {
    NSLog(@"Person 类被加载到内存了");
}

+ (void)initialize {
    NSLog(@"Person initialize");
}
@end
