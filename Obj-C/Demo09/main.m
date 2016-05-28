#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    Student *s = [Student new];
    [s setStuName:@"kingcos"];
    NSLog(@"%@", [s stuName]);
    
    // 改名后，点语法依然可用
    s.englishGrade = 100.0;
    NSLog(@"%f", s.englishGrade);
    [s engSetter:150.0];
    NSLog(@"%f", [s engGetter]);
    return 0;
}
