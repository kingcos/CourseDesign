#import "Student.h"

@implementation Student
+ (void)load {
    NSLog(@"Student 类被加载到内存了");
}

+ (void)initialize {
    NSLog(@"Student initialize");
}
@end
