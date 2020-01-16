//
//  Visitor.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/16.
//  Copyright © 2020 william. All rights reserved.
//

#import "Visitor.h"

@implementation Visitor

- (void)visitConcreteElementA:(ConcreteElementA *)concreteElementA {}

- (void)visitConcreteElementB:(ConcreteElementB *)concreteElementB {}

@end


@implementation ConcreteVisitor1

- (void)visitConcreteElementA:(ConcreteElementA *)concreteElementA
{
    NSLog(@"%@被%@访问",[concreteElementA className],[self className]);
}

- (void)visitConcreteElementB:(ConcreteElementB *)concreteElementB
{
    NSLog(@"%@被%@访问",[concreteElementB className],[self className]);
}

@end


@implementation ConcreteVisitor2

- (void)visitConcreteElementA:(ConcreteElementA *)concreteElementA
{
    NSLog(@"%@被%@访问",[concreteElementA className],[self className]);
}

- (void)visitConcreteElementB:(ConcreteElementB *)concreteElementB
{
    NSLog(@"%@被%@访问",[concreteElementB className],[self className]);
}

@end
