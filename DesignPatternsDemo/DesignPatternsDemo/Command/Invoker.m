//
//  Invoker.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import "Invoker.h"

@interface Invoker()

@property (nonatomic, strong) Command *command;

@end

@implementation Invoker

- (void)setCommand:(Command *)command
{
    _command = command;
}

- (void)executeCommand
{
    [self.command execute];
}

@end
