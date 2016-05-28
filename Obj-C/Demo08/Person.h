#import <Foundation/Foundation.h>

@interface Person : NSObject {
    int _proHeight;
    // 这里的私有仍可以被其他类查看到，只是不能访问
    @private
    int _priAge;
    @protected
    NSString *_proGender;
    @public
    NSString *_pubName;
    @package
    double _pacVar;
}
// 没有声明的私有方法
//- (void)test;
@end
