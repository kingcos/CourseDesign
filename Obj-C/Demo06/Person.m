#import "Person.h"

@implementation Person
-(void)test {
    _pubName = @"Tim";
    _proGender = @"Male";
    _proHeight = 175;
    _priAge = 35;
    _pacVar = 3.14;
    NSLog(@"%@ %@ %i %i %f", _pubName, _proGender, _proHeight, _priAge, _pacVar);
}
@end
