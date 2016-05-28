#import "Student.h"

@implementation Student
- (void)setStuId:(int)stuId {
    _stuId = stuId;
}
- (int)stuId {
    return _stuId;
}

- (void)setStuName:(NSString *)stuName {
    _stuName = stuName;
}
- (NSString *)stuName {
    return _stuName;
}

- (void)setChineseGrade:(double)chineseGrade {
    _chineseGrade = chineseGrade;
}
- (double)chineseGrade {
    return _chineseGrade;
}

- (void)setEnglishGrade:(double)englishGrade {
    _englishGrade = englishGrade;
}
- (double)englishGrade {
    return _englishGrade;
}

+ (NSString *)description {
    // 不常用
    return @"Class method descrption";
}
- (NSString *)description {
    /*
     访问属性的几种方法：
     s->_stuId;
     [s stuId];
     s.stuId;
     
     self(当前对象):
     self->_stuId;
     [self stuId];
     self.stuId;
     
     // 死循环（description 中慎用 self）
     return [NSString stringWithFormat:@"%@", self];
     */
    return @"Object method descrption";
}
@end