#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
#import "Dog.h"
#import "Teacher.h"

int main(int argc, const char * argv[]) {
    Person *p = [Person new];
    [p playFootball];
    
    Student *s = [Student new];
    [s playBaseball];
    
    Dog *d = [Dog new];
    [d playBasketball];
    
    [p writeCode];
    
    Teacher *t = [Teacher new];
    [t playYoga];
    [t playBasketball];
    return 0;
}
