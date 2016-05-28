#import <Foundation/Foundation.h>
// .m: #import .h: @class
@class Animal;

@interface Person : NSObject
// 在 ARC 中保存一个对象用 strong，相当于 MRC 中的 retain
@property(nonatomic, strong)Animal *animal;
@end
