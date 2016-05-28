#import <Foundation/Foundation.h>

@protocol Sports <NSObject>
/*
// 协议只能声明方法，不能声明变量
{
    int _time;
}
*/

// 方法的声明列表
- (void)playFootball;
@required
// 默认 @required
- (void)playBasketball;
@optional
// 可选
- (void)playBaseball;
@end
