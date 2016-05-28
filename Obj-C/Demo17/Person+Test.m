#import "Person+Test.h"

@implementation Person (Test)
- (void)say {
    NSLog(@"%s", __func__);
}
@end
