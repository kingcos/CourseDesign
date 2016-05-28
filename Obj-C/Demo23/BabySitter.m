#import "BabySitter.h"
#import "Baby.h"

@implementation BabySitter
- (void)feedBaby:(Baby *)baby {
    baby.hungryPersent -= 10;
    NSLog(@"%s, %i", __func__, baby.hungryPersent);
}

- (void)tellStoryToBaby:(Baby *)baby {
    baby.sleepyPersent += 10;
    NSLog(@"%s, %i", __func__, baby.sleepyPersent);
}
@end
