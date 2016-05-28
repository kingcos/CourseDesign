#import <Foundation/Foundation.h>

@class Person;

@interface Animal : NSObject
// 在 ARC 中如果保存对象不要用 assign，用 weak
// assign 是专门用于保存基本数据类型的，如果保存对象用 weak
@property(nonatomic, weak)Person *person;
// @property(nonatomic, strong)Person *person;
@end
