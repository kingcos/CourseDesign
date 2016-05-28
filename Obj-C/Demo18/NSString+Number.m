#import "NSString+Number.h"

@implementation NSString (Number)
- (int)findNumbers {
    int count = 0;
    for (int i = 0; i < self.length; i++) {
        if ([self characterAtIndex:i] <= '9'
            && [self characterAtIndex:i] >= '0') {
            count++;
        }
    }
    return count;
}
@end
