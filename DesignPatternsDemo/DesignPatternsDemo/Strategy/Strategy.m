//
//  Strategy.m
//  DesignPatternsDemo
//
//  Created by william on 2019/12/25.
//  Copyright © 2019 william. All rights reserved.
//

#import "Strategy.h"

@implementation Strategy

- (void)algorithmInterface
{
    
}

@end


@implementation ConcreteStrategyA

- (void)algorithmInterface
{
    NSLog(@"算法A实现");
}

@end

@implementation ConcreteStrategyB

- (void)algorithmInterface
{
    NSLog(@"算法B实现");
}

@end

@implementation ConcreteStrategyC

- (void)algorithmInterface
{
    NSLog(@"算法C实现");
}

@end
