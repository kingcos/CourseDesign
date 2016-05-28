#import <Foundation/Foundation.h>
#import "Bottle.h"

#pragma mark - Person Class
@interface Person : NSObject {
    NSString *_name;
    int _age;
    double _money;
}
- (void)drinkWater:(Water *)w withBottle:(Bottle *)b;
@end