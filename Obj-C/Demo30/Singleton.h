#define interfaceSingleton(className) +(instancetype)share##className

#define implementationSingleton(className)             \
static className *_instance = nil;                          \
+ (instancetype)share##className {                        \
    className *instance = [[self alloc] init];              \
    return instance;                                   \
}                                                      \
+ (instancetype)allocWithZone:(struct _NSZone *)zone { \
    if (_instance == nil) {                            \
        _instance = [[super allocWithZone:zone] init]; \
    }                                                  \
    return _instance;                                  \
}                                                      \
- (id)copyWithZone:(NSZone *)zone {                    \
    return _instance;                                  \
}                                                      \
- (id)mutableCopyWithZone:(NSZone *)zone {             \
    return _instance;                                  \
}
