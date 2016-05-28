#import <Foundation/Foundation.h>
#import "Example.h"

int main(int argc, const char * argv[]) {
    Person *p = [Person new];
    [p testSelfObjectMethod];
    [Person selfClassMethodDemo];
    
    [p setExpVar:10010];
    NSLog(@"%i", [p expVar]);
    return 0;
}