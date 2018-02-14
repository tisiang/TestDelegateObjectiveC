//
//  MasterClass.h
//  TestDelegateObjectiveC
//
//  Created by Will Choy on 14/2/18.
//  Copyright © 2018 TS. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MasterClassDelegate <NSObject>

@optional
- (void)processCompleted;
@end

@interface MasterClass : NSObject

@property (nonatomic,weak) NSObject <MasterClassDelegate> *delegate;

- (void)registerDelegateAndProcessComplete:(id <MasterClassDelegate>)delegate;

- (void)testProcessComplete;

@end
