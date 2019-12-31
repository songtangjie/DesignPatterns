//
//  Decorator.m
//  DesignPatternsDemo
//
//  Created by william on 2019/12/30.
//  Copyright © 2019 william. All rights reserved.
//

#import "Decorator.h"

@interface Decorator()

@property (nonatomic, strong) DecoratorComponent *component;

@end

@implementation Decorator

- (void)operation
{
    if (self.component) {
        [self.component operation];
    }
}

- (void)setComponent:(DecoratorComponent *)component
{
    _component = component;
}

@end

// ------------------------------
@interface ConcreteDecoratorA()

@property (nonatomic, strong) NSString *addedState;

@end

@implementation ConcreteDecoratorA

- (void)operation
{
    [super operation];
    
    self.addedState = @"New State";
    NSLog(@"具体装饰对象A的操作");
}

@end

// ------------------------------
@implementation ConcreteDecoratorB

- (void)operation
{
    [super operation];
    
    [self addedBehavior];
    NSLog(@"具体装饰对象B的操作");
}

- (void)addedBehavior
{
    
}

@end
