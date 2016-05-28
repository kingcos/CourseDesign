#import <Foundation/Foundation.h>

@interface Person : NSObject {
    int _proHeight;
    @private
    int _priAge;
    @protected
    NSString *_proGender;
    @public
    NSString *_pubName;
    @package
    double _pacVar;
}
- (void)test;
@end
