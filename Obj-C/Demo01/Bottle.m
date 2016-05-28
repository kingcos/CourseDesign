#import "Bottle.h"

@implementation Bottle
- (Boolean)addWater:(Water *)w {
    return [w isBoiled];
}
@end