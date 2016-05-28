#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    Student *s = [Student new];
    [s setStuId:1];
    [s setStuName:@"kingcos"];
    
    // 点语法访问属性
    s.chineseGrade = 92;
    s.englishGrade = 93;
    
    NSLog(@"Stundent id: %i", [s stuId]);
    NSLog(@"Student name: %@", [s stuName]);
    NSLog(@"Average Grade: %.2f", s.averageGrade);
    
    s.test;
    return 0;
}