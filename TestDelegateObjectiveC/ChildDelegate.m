//
//  ChildDelegate.m
//  TestDelegateObjectiveC
//
//  Created by Will Choy on 14/2/18.
//  Copyright © 2018 TS. All rights reserved.
//

#import "ChildDelegate.h"

@interface ChildDelegate()<MasterClassDelegate>

@end

@implementation ChildDelegate

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)callMaster {
    MasterClass *master =[[MasterClass alloc]init];
    [master registerDelegateAndProcessComplete:self];
}

- (void)processCompleted {
    NSLog(@"processCompleted executed in child");
}
@end
