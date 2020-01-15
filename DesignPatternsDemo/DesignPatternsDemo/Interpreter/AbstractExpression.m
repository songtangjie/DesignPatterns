//
//  AbstractExpression.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/15.
//  Copyright © 2020 william. All rights reserved.
//

#import "AbstractExpression.h"

@implementation AbstractExpression

- (void)interpreter:(InterpreterContext *)context {}

@end

@implementation TerminalExpression

- (void)interpreter:(InterpreterContext *)context
{
    NSLog(@"终端解释器");
}

@end

@implementation NonterminalExpression

- (void)interpreter:(InterpreterContext *)context
{
    NSLog(@"非终端解释器");
}

@end
