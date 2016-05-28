#import "Water.h"

@implementation Water
- (void)boil {
    _temperature += 25.0;
}

- (Boolean)isBoiled {
    if (_temperature >= 100.0) {
        return TRUE;
    } else {
        [self boil];
        return FALSE;
    }
}
@end