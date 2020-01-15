//
//  Mediator.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/15.
//  Copyright © 2020 william. All rights reserved.
//

#import "Mediator.h"

@implementation Mediator

- (void)send:(NSString *)message colleague:(Colleague *)colleague
{
    
}

@end


@interface ConcreteMediator()

@property (nonatomic, strong) ConcreteColleague1 *colleague1;
@property (nonatomic, strong) ConcreteColleague2 *colleague2;

@end

@implementation ConcreteMediator

- (void)send:(NSString *)message colleague:(Colleague *)colleague
{
    if (colleague == self.colleague1) {
        [self.colleague2 notify:message];
    } else {
        [self.colleague1 notify:message];
    }
}

- (void)setColleague1:(ConcreteColleague1 *)colleague1
{
    _colleague1 = colleague1;
}

- (void)setColleague2:(ConcreteColleague2 *)colleague2
{
    _colleague2 = colleague2;
}

@end
