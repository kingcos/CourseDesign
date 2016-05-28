#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;
- (void)demo;
- (void)demoWithString:(NSString *)string;

// 调用传入对象的指定方法
- (void)genObject:(id)obj andSel:(SEL)sel;
@end
