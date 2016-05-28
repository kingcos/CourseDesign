#import "Student.h"

@implementation Student
- (instancetype)initWithAge:(int)age andName:(NSString *)name andId:(int)id {
    // 自己的事情自己做
    if (self = [super initWithAge:age andName:name]) {
        _stuId = id;
    }
    return self;
}
@end
