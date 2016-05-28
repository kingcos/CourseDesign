#import "Person.h"

@implementation Person
// 把 Water 对象再传递给 Bottle（连续传递）
- (void)drinkWater:(Water *)w withBottle:(Bottle *)b {
    if (w != nil && b != nil) {
        if ([b addWater:w]) {
            NSLog(@"Nice water!");
        } else {
            NSLog(@"Oh no.");
        }
    }
}
@end
