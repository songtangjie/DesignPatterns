//
//  ConcreteClassA.m
//  DesignPatternsDemo
//
//  Created by william on 2019/12/31.
//  Copyright © 2019 william. All rights reserved.
//

#import "ConcreteClassA.h"

@implementation ConcreteClassA

- (void)primitiveOperation1
{
    NSLog(@"具体类A方法1实现");
}

- (void)primitiveOperation2
{
    NSLog(@"具体类A方法2实现");
}

@end

@implementation ConcreteClassB

- (void)primitiveOperation1
{
    NSLog(@"具体类B方法1实现");
}

- (void)primitiveOperation2
{
    NSLog(@"具体类B方法2实现");
}


@end
