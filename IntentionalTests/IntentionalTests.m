//
//  IntentionalTests.m
//  IntentionalTests
//
//  Created by Brad Grzesiak on 2/4/14.
//  Copyright (c) 2014 Bendyworks Inc. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface IntentionalTests : XCTestCase

@end

@implementation IntentionalTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

@end
