#import <Foundation/Foundation.h>

@interface Person : NSObject {
    int expVar;
}
- (void)testSelfObjectMethod;
- (void)test;
+ (void)selfClassMethodDemo;
+ (void)demo;

- (void)setExpVar:(int)expVar;
- (int)expVar;
@end