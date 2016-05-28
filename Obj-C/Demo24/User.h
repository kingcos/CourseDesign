#import <Foundation/Foundation.h>

@class User;

@protocol UserProtocol <NSObject>

- (void)userWriteCode:(User *)user;

@end

@interface User : NSObject
@property(nonatomic, strong) id<UserProtocol> delegate;

- (void)writeCode;
@end
