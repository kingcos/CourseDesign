#import "Person.h"

@implementation Person {
    // 也可在实现的 {} 中声明成员变量
    // 默认为私有变量（略不同于 @private)
    // 不能查看到，也不能访问
    double _weight;
}

- (void)test {
    _pubName = @"Tim";
    _proGender = @"Male";
    _proHeight = 175;
    _priAge = 35;
    _pacVar = 3.14;
    NSLog(@"%@ %@ %i %i %f", _pubName, _proGender, _proHeight, _priAge, _pacVar);
}
@end
