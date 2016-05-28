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
// setter 的其他好处：可以监听属性的变化
- (void)setChineseGrade:(double)chineseGrade {
    _chineseGrade = chineseGrade;
    _averageGrade = (_chineseGrade + _englishGrade) / 2;
}
- (double)chineseGrade {
    return _chineseGrade;
}
- (void)setEnglishGrade:(double)englishGrade {
    _englishGrade = englishGrade;
    _averageGrade = (_chineseGrade + _englishGrade) / 2;
}
- (double)englishGrade {
    return _englishGrade;
}

- (double)averageGrade {
    // 性能问题：只有参与运算的值发生变化才需要重新计算
    return _averageGrade;
}

- (void)test {
    NSLog(@"不报错，但有警告。因此不建议这样使用点语法。");
}
@end