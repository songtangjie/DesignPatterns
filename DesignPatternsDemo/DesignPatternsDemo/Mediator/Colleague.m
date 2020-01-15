//
//  Colleague.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/15.
//  Copyright © 2020 william. All rights reserved.
//

#import "Colleague.h"
#import "Mediator.h"

@interface Colleague()

@property (nonatomic, strong) Mediator *mediator;

@end

@implementation Colleague

- (instancetype)initWithMediator:(Mediator *)mediator
{
    if (self = [super init]) {
        self.mediator = mediator;
    }
    return self;
}

@end


@implementation ConcreteColleague1

- (void)send:(NSString *)message
{
    [self.mediator send:message colleague:self];
}

- (void)notify:(NSString *)message
{
    NSLog(@"同事1得到信息%@",message);
}

@end

@implementation ConcreteColleague2

- (void)send:(NSString *)message
{
    [self.mediator send:message colleague:self];
}

- (void)notify:(NSString *)message
{
    NSLog(@"同事2得到信息%@",message);
}

@end
