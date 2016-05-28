#import <Foundation/Foundation.h>
#import "Baby.h"
#import "BabySitter.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    Baby *b = [Baby new];
    BabySitter *bs = [BabySitter new];
    Student *s = [Student new];
    b.babysitter = bs;
    // 换保姆：
    // Stundent 没有遵守协议，所以会警告
    b.babysitter = s;
    
    
    [b eat];
    [b sleep];
    return 0;
}
