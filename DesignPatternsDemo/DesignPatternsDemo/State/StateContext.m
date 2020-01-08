//
//  StateContext.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import "StateContext.h"

@interface StateContext()

@end

@implementation StateContext

- (instancetype)initWithState:(State *)state
{
    if (self = [super init]) {
        self.state = state;
    }
    return self;
}

- (void)setState:(State *)state
{
    _state = state;
    
    NSLog(@"当前状态%@",NSStringFromClass([state class]));
}

- (void)request
{
    [self.state handle:self];
}

@end
