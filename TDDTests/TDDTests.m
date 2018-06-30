//
//  TDDTests.m
//  TDDTests
//
//  Created by Lakshmi on 6/30/18.
//  Copyright © 2018 Lakshmi. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AmountFormatter.h"
@interface TDDTests : XCTestCase

@end

@implementation TDDTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}
-(void)testShouldDisplay1comma00WhenGivingInput1{
    
    
    AmountFormatter *formatter = [[AmountFormatter alloc]init];
    
    NSString *givenValue = [formatter formatAmountForRegion:@"1.00" currentRegion:nl];
    
    NSString *expectedValue = @"1,00";
    
    XCTAssertTrue([expectedValue isEqualToString:givenValue], @"istrue");
}
@end
