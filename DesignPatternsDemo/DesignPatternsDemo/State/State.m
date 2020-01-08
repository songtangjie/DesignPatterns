//
//  State.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import "State.h"
#import "StateContext.h"

@implementation State

- (void)handle:(StateContext *)contexst
{
    
}

@end


@implementation ConcreteStateA

- (void)handle:(StateContext *)contexst
{
    contexst.state = [ConcreteStateB new];
}

@end

@implementation ConcreteStateB

- (void)handle:(StateContext *)contexst
{
    contexst.state = [ConcreteStateA new];
}

@end

