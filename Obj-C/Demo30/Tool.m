#import "Tool.h"

@implementation Tool
implementationSingleton(Tool);
/*
static Tool *_instance = nil;

+ (instancetype)shareInstance {
    Tool *instance = [[self alloc] init];
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    if (_instance == nil) {
        _instance = [[super allocWithZone:zone] init];
    }
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone {
    return _instance;
}

- (id)mutableCopyWithZone:(NSZone *)zone {
    return _instance;
}
*/
@end
