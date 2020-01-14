//
//  Command.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import "Command.h"

@interface Command()

@property (nonatomic, strong) Receiver *receiver;

@end

@implementation Command

- (instancetype)initWithCommand:(Receiver *)receiver
{
    if (self = [super init]) {
        self.receiver = receiver;
    }
    return self;
}

- (void)execute {}

@end


@implementation ConcreteCommand

- (void)execute
{
    [self.receiver action];
}

@end
