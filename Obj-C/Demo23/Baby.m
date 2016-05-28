#import "Baby.h"
#import "BabySitter.h"

@implementation Baby
- (void)eat {
    self.hungryPersent += 5;
    NSLog(@"%s, %i", __func__, self.hungryPersent);
    if ([self.babysitter respondsToSelector:@selector(feedBaby:)]) {
        // 通知保姆
        [self.babysitter feedBaby:self];
    }
}

- (void)sleep {
    self.sleepyPersent -= 5;
    NSLog(@"%s, %i", __func__, self.sleepyPersent);
    if ([self.babysitter respondsToSelector:@selector(tellStoryToBaby:)]) {
        // 通知保姆
        [self.babysitter tellStoryToBaby:self];
    }
}
@end
