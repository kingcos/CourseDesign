#import <Foundation/Foundation.h>
#import "Person.h"

@interface Student : Person
@property int stuId;
- (instancetype)initWithAge:(int)age andName:(NSString *)name andId:(int)id;
@end
