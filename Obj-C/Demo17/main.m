#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+Demo.h"

int main(int argc, const char * argv[]) {
    Person *p = [[Person alloc] init];
    p.age = 20;
    [p say];
    [p play];
    
    // unrecognized selector sent to instance
//    p.height = 180;
    [p visitWeight];
    
    
    return 0;
}
