//
//  Implementor.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import "Implementor.h"

@implementation Implementor

- (void)operation {}

@end


@implementation ConcreteImplementorA

- (void)operation
{
    NSLog(@"具体实现A的方法执行");
}

@end

@implementation ConcreteImplementorB

- (void)operation
{
    NSLog(@"具体实现B的方法执行");
}

@end
