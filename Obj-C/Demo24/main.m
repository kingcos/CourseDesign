#import <Foundation/Foundation.h>
#import "User.h"
#import "MacBook.h"
#import "XPS.h"

int main(int argc, const char * argv[]) {
    User *u = [User new];
    MacBook *mb = [MacBook new];
    XPS *xps = [XPS new];
    
    u.delegate = mb;
    [u writeCode];
    
    u.delegate = xps;
    [u writeCode];
    return 0;
}
