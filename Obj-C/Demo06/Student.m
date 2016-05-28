#import "Student.h"

@implementation Student
- (void)test {
    [super test];
    // 子类拥有 private 成员，但不可访问
    NSLog(@"%@ %@ %i %f", _pubName, _proGender, _proHeight, _pacVar);
}

@end
