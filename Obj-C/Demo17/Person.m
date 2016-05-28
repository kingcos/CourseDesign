#import "Person.h"

@interface Person () {
    int _height;
}
- (void)visitHeight;
@end

@implementation Person
- (void)say {
    NSLog(@"%s", __func__);
}

- (void)visitHeight {
    NSLog(@"%s", __func__);
}
@end
