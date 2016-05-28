#import "Student.h"

@implementation Student
// Xcode 4.4 前自动赋值给 stuId(不带下划线)，默认同名
// @synthesize stuId;

// 将 _englishGrade 赋值给了 chineseGrade
// @synthesize chineseGrade = _englishGrade;

@synthesize stuId = _stuId;

/*
 @synthesize stuName = _stuName;
 @synthesize chineseGrade = _chineseGrade;
 @synthesize englishGrade = _englishGrade;
*/
@end