//
//  AHealthStoreContainerClass.m
//  HKHealthStoreFrameworkUnitTestBug
//
//  Created by William Burgar on 22/09/2016.
//  Copyright © 2016 asensei inc. All rights reserved.
//

#import "AHealthStoreContainerClass.h"

@implementation AHealthStoreContainerClass


-(void)authorizeHealthStore {
    if ([HKHealthStore isHealthDataAvailable]) {
        
        _healthStore = [[HKHealthStore alloc] init];
        
        NSSet *readTypes = [NSSet setWithObject:[HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate]];
        NSSet *writeTypes = [NSSet set];
        
        
        [_healthStore requestAuthorizationToShareTypes:writeTypes readTypes:readTypes completion:^(BOOL success, NSError *error) {
            
            if (success) {
                
                NSLog(@"healthstore authorised for heart rate.");
                
            } else {
                
                NSLog(@"error from healthstore authorization %@", error);
            }
        }];
        
    }
    
}


@end
