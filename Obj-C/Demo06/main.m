#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    Person *p = [Person new];
    Person *s = [Student new];
    p->_pubName = @"Swift";
    
    [p test];
    [s test];
    return 0;
}
