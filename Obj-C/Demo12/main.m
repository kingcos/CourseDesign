#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    Person *p1 = [[Person alloc] initWithAge:10];
    Person *p2 = [[Person alloc] initWithName:@"iOS"];
    Person *p3 = [[Person alloc] initWithAge:10 andName:@"iPhone"];
    
    NSLog(@"%@\n%@\n%@", p1, p2, p3);
    
    Student *stu1 = [[Student alloc] initWithAge:7 andName:@"iPad"];
    Student *stu2 = [[Student alloc] initWithAge:1 andName:@"Apple Watch" andId:2015];
    NSLog(@"%@\n%@", stu1, stu2);
    
    
    
    return 0;
}
