#import <Foundation/Foundation.h>
#import "Singleton.h"

@interface Tool : NSObject <NSCopying, NSMutableCopying>
// 一般情况下，创建一个单例对象都有一个与之对应的类方法
// 一般情况下，用于创建单例对象的方法名称都以 share/default 开头，加上类名
//+ (instancetype)shareInstance;
interfaceSingleton(Tool);
@end
