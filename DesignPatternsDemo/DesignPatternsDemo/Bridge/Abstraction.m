//
//  Abstraction.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import "Abstraction.h"

@interface Abstraction()

@property (nonatomic, strong) Implementor *implementor;

@end

@implementation Abstraction

- (void)setImplementor:(Implementor *)implementor
{
    _implementor = implementor;
}

- (void)operation
{
    [self.implementor operation];
}

@end


@implementation RefinedAbstraction

- (void)operation
{
    [super.implementor operation];
}

@end
