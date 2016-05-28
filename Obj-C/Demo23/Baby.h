#import <Foundation/Foundation.h>
#import "LookAferBaby.h"

@class BabySitter;

/*
 代理设计模式的应用场景：
 1. 当 A 对象想监听B对象的一些变化时，可以使用代理设计模式，保姆想监听婴儿的变化，那么保姆就可以成为婴儿的代理，当婴儿发生变化之后保姆就可以监听到
 2. 当 B 对象发生一些事情, 想通知A对象的时候，可以使用代理设计模式
 婴儿想通知保姆，那么就可以让保姆成为婴儿的代理，只要保姆成为婴儿的代理, 以后婴儿发生变化就可以通知保姆
 3. 当对象 A 无法处理某些行为的时候，想让对象 B 帮忙处理（让对象 B 成为对象 A 的代理对象）
 婴儿无法自己吃东西，也无法自己入睡, 所以可以让保姆帮忙处理。只要让保姆成为婴儿的代理就可以帮婴儿喂它吃东西和哄他睡觉
 */

@interface Baby : NSObject
@property(nonatomic, assign) int hungryPersent;
@property(nonatomic, assign) int sleepyPersent;
//@property(nonatomic, strong) BabySitter *babysitter;

// 如果使用 id 类型来接收保姆，如果将来换保姆的类型了，婴儿类不用修改代码
// 类型限定
@property(nonatomic, strong) id<LookAferBaby> babysitter;

- (void)eat;
- (void)sleep;
@end
