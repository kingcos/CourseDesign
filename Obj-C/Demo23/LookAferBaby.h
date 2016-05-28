#import <Foundation/Foundation.h>

@class Baby;

@protocol LookAferBaby <NSObject>
- (void)feedBaby:(Baby *)baby;
- (void)tellStoryToBaby:(Baby *)baby;
@end
