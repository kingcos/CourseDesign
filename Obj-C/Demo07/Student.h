#import <Foundation/Foundation.h>

@interface Student : NSObject {
    int _stuId;
    NSString *_stuName;
    double _chineseGrade;
    double _englishGrade;
}

- (void)setStuId:(int)stuId;
- (int)stuId;
- (void)setStuName:(NSString *)stuName;
- (NSString *)stuName;
- (void)setChineseGrade:(double)chineseGrade;
- (double)chineseGrade;
- (void)setEnglishGrade:(double)englishGrade;
- (double)englishGrade;

+ (NSString *)description;
- (NSString *)description;
@end