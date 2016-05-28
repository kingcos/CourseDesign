#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    Person *p1 = [Person person];
    Person *p2 = [Person personWith:30];
    
    NSLog(@"%i %i", p1.age, p2.age);
    
    /*
    // 苹果自家规范
    [[NSString alloc] init];
    [NSString string];
    
    [[NSString alloc] initWithString:<#(nonnull NSString *)#>];
    [NSString stringWithString:<#(nonnull NSString *)#>];
    
    [[NSArray alloc] init];
    [NSArray array];
    
    [[NSArray alloc] initWithArray:<#(nonnull NSArray *)#>];
    [NSArray arrayWithArray:<#(nonnull NSArray<ObjectType> *)#>];
    
    Student *stu = [Student person];
    stu.stuId = 10;
    */
    
    Person *p = [Person personWith:20];
    return 0;
}
