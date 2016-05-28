#import "Person.h"

@implementation Person
- (void)demo {
    NSLog(@"Demo");
}

- (void)demoWithString:(NSString *)string {
    NSLog(@"%@", string);
}

- (void)genObject:(id)obj andSel:(SEL)sel {
    [obj performSelector:sel];
}
@end
