#import <Foundation/Foundation.h>

@interface Student : NSObject {
    int _stuId;
    NSString *_stuName;
    double _chineseGrade;
    double _englishGrade;
    double _averageGrade;
}
// 可读可写属性
- (void)setStuId:(int)stuId;
- (int)stuId;

- (void)setStuName:(NSString *)stuName;
- (NSString *)stuName;

- (void)setChineseGrade:(double)chineseGrade;
- (double)chineseGrade;
- (void)setEnglishGrade:(double)englishGrade;
- (double)englishGrade;

// 只读属性
- (double)averageGrade;

- (void)test;
@end