#import <Foundation/Foundation.h>

#pragma mark - Water Class
@interface Water : NSObject {
    double _temperature;
}
- (void)boil;
- (Boolean)isBoiled;
@end