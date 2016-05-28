#import "Demo.h"

@implementation Demo
- (void)print {
    NSLog(@"%s", __func__);
}

- (void)printSth:(NSString *)sth {
    NSLog(@"%@", sth);
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%i", self.data];
}
@end
