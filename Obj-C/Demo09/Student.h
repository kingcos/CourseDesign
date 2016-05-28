#import <Foundation/Foundation.h>

@interface Student : NSObject
@property int stuId;

// Xcode 4.4 后默认 _ 开头的变量
@property NSString * stuName;
// @property(readwrite) NSString * stuName; // 同上，默认可读可写

// 只读
@property(readonly) double chineseGrade;
// 修改 getter/setter 名称（setter 不要忘了 :）
@property(getter=engGetter, setter=engSetter:) double englishGrade;

@end