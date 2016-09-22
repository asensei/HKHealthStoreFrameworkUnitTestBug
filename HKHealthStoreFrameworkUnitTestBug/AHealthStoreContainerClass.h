//
//  AHealthStoreContainerClass.h
//  HKHealthStoreFrameworkUnitTestBug
//
//  Created by William Burgar on 22/09/2016.
//  Copyright © 2016 asensei inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <HealthKit/HealthKit.h>

@interface AHealthStoreContainerClass : NSObject

@property (strong, nonatomic) HKHealthStore *healthStore;

-(void)authorizeHealthStore;


@end
