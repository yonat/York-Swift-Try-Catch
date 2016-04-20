@import XCTest;
@import York_Swift_Try_Catch;

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)test_tryCatch_mustNotThrow {
    
    [TryCatchFinally handleTryBlock:^{
        XCTAssertTrue(true);
    } withCatchBlock:^(NSException *exception) {
        XCTAssertTrue(false);
    }];
    
}

- (void)test_tryCatch_mustThrowAndCatch {
    
    [TryCatchFinally handleTryBlock:^{
        [[NSException exceptionWithName:@"TestException" reason:@"testing"  userInfo:nil] raise];
        XCTAssertTrue(false);
    } withCatchBlock:^(NSException *exception) {
        XCTAssertEqual(exception.name, @"TestException");
        XCTAssertEqual(exception.reason, @"testing");
        XCTAssertTrue(true);
    }];
    
}

- (void)test_tryCatchFinally_mustNotThrow {
    
    __block BOOL executedFinally = NO;
    
    [TryCatchFinally handleTryBlock:^{
        XCTAssertTrue(true);
    } withCatchBlock:^(NSException *exception) {
        XCTAssertTrue(false);
    } withFinallyBlock:^{
        executedFinally = YES;
    }];
    XCTAssertTrue(executedFinally);
}

- (void)test_tryCatchFinally_mustThrowAndCatchAndExecuteFinally {
    
    __block BOOL executedFinally = NO;
    
    [TryCatchFinally handleTryBlock:^{
        [[NSException exceptionWithName:@"TestException" reason:@"testing"  userInfo:nil] raise];
        XCTAssertTrue(false);
    } withCatchBlock:^(NSException *exception) {
        XCTAssertEqual(exception.name, @"TestException");
        XCTAssertEqual(exception.reason, @"testing");
        XCTAssertTrue(true);
    } withFinallyBlock:^{
        executedFinally = YES;
    }];
    XCTAssertTrue(executedFinally);
    
}

@end
