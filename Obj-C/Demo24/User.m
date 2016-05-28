#import "User.h"

@implementation User
- (void)writeCode {
    NSLog(@"%s", __func__);
    
    if ([self.delegate respondsToSelector:@selector(userWriteCode:)]) {
        [self.delegate userWriteCode:self];
    }
}
@end
