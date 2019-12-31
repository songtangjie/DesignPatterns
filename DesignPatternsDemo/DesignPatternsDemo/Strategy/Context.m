//
//  Context.m
//  DesignPatternsDemo
//
//  Created by william on 2019/12/25.
//  Copyright © 2019 william. All rights reserved.
//

#import "Context.h"

@interface Context ()

/// 策略对象
@property (nonatomic, strong) Strategy *strategy;

@end

@implementation Context

- (instancetype)initWithStrategy:(StrategyType)type
{
    if (self = [super init]) {
        switch (type) {
            case StrategyTypeA:
                self.strategy = [ConcreteStrategyA new];
                break;
            case StrategyTypeB:
                self.strategy = [ConcreteStrategyB new];
                break;
            case StrategyTypeC:
                self.strategy = [ConcreteStrategyC new];
                break;
            default:
                break;
        }
    }
    return self;
}

- (void)contextInterface
{
    [self.strategy algorithmInterface];
}

@end
