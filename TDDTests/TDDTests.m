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
@property (nonatomic, strong) AmountFormatter *amountFormatter;
@end

@implementation TDDTests

- (void)setUp {
    [super setUp];
     self.amountFormatter = [[AmountFormatter alloc]init];
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
    

    
    NSString *expectedValue = @"1,00";
    
    XCTAssertTrue([expectedValue isEqualToString:[self shouldReturnFormattedAmountWithLang:@"1"]], @"istrue");
}
-(void)testShouldDisplay12comma00WhenGivingInput12{
    

    
    NSString *expectedValue = @"12,00";
    
    XCTAssertTrue([expectedValue isEqualToString:[self shouldReturnFormattedAmountWithLang:@"12"]], @"istrue");
}
-(void)testShouldDisplay12comma00WhenGivingInput12dot{
    

    
    NSString *expectedValue = @"12,00";
    
    XCTAssertTrue([expectedValue isEqualToString:[self shouldReturnFormattedAmountWithLang:@"12."]], @"istrue");
}
-(void)testShouldDisplay12comma30WhenGivingInput12dot3{
 
    NSString *expectedValue = @"12,30";
    
    XCTAssertTrue([expectedValue isEqualToString:[self shouldReturnFormattedAmountWithLang:@"12.3"]], @"istrue");
}
-(void)testShouldDisplay12comma35WhenGivingInput12dot35{
    
  
    NSString *expectedValue = @"12,35";
    
    XCTAssertTrue([expectedValue isEqualToString:[self shouldReturnFormattedAmountWithLang:@"12.35"]], @"istrue");
}
-(void)testShouldDisplay1dot234comma00WhenGivingInput1234{
    
    
    NSString *expectedValue = @"1.234,00";
    
    XCTAssertTrue([expectedValue isEqualToString:[self shouldReturnFormattedAmountWithLang:@"1234"]], @"istrue");
}


-(NSString*)shouldReturnFormattedAmountWithLang:(NSString*)givenAmount {
    return [self.amountFormatter formatAmountForRegionWithLang:givenAmount ];
}

@end
