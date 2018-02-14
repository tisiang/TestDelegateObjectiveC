//
//  MasterClass.m
//  TestDelegateObjectiveC
//
//  Created by Will Choy on 14/2/18.
//  Copyright © 2018 TS. All rights reserved.
//

#import "MasterClass.h"

@implementation MasterClass

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)registerDelegateAndProcessComplete:(id <MasterClassDelegate>)delegate {
    self.delegate = delegate;
    if ([self.delegate respondsToSelector:@selector(processCompleted) ]) {
        NSLog(@"Going to call delegate's processCompleted");
        [self.delegate processCompleted];
    }
}

- (void)testProcessComplete {
    if ([self.delegate respondsToSelector:@selector(processCompleted) ]) {
        NSLog(@"Going to call delegate's processCompleted");
        [self.delegate processCompleted];
    }
}

@end
