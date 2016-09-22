//
//  HKHealthStoreFrameworkUnitTestBugTests.m
//  HKHealthStoreFrameworkUnitTestBugTests
//
//  Created by William Burgar on 22/09/2016.
//  Copyright © 2016 asensei inc. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AHealthStoreContainerClass.h"

@interface HKHealthStoreFrameworkUnitTestBugTests : XCTestCase

@property (nonatomic, strong) AHealthStoreContainerClass *hsContainer;

@end

@implementation HKHealthStoreFrameworkUnitTestBugTests

- (void)setUp {
    [super setUp];
    
    self.hsContainer = [[AHealthStoreContainerClass alloc] init];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testAuthorizeHealthStore {
    
    XCTAssertNil(self.hsContainer.healthStore);
    
    XCTAssertNoThrow([self.hsContainer authorizeHealthStore], @"HKHealthStore authorization is throwing an exception because it can't find the keys in the info.plist.");
    
    XCTAssertNotNil(self.hsContainer.healthStore);

}


@end
