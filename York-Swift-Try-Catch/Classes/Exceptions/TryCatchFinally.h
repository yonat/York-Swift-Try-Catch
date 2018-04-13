#import <Foundation/Foundation.h>

@interface TryCatchFinally : NSObject

+ (void)handleTryBlock:(void(^)(void))tryBlock
        withCatchBlock:(void(^)(NSException * exception))catchBlock;

+ (void)handleTryBlock:(void(^)(void))tryBlock
        withCatchBlock:(void(^)(NSException * exception))catchBlock
      withFinallyBlock:(void(^)(void))finallyBlock;

@end
