//
//  Element.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/16.
//  Copyright © 2020 william. All rights reserved.
//

#import "Element.h"
#import "Visitor.h"

@implementation Element

- (void)accept:(Visitor *)visitor {}

@end

@implementation ConcreteElementA

- (void)operationA {}

- (void)accept:(Visitor *)visitor
{
    [visitor visitConcreteElementA:self];
}

@end

@implementation ConcreteElementB

- (void)operationB {}

- (void)accept:(Visitor *)visitor
{
    [visitor visitConcreteElementB:self];
}

@end

