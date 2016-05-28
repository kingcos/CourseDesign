#import "Student.h"

@implementation Student
- (NSString *)description {
    return [NSString stringWithFormat:@"%i %@ %f", [self age], [self name], [self height]];
}

- (id)copyWithZone:(NSZone *)zone {
    // 创建副本
//    id obj = [[self class] allocWithZone:zone];
    id obj = [super copyWithZone:zone];
    
    // 设置数据给副本
//    [obj setAge:[self age]];
//    [obj setName:[self name]];
    [obj setHeight:[self height]];
    
    // 返回副本
    return obj;
}

@end
