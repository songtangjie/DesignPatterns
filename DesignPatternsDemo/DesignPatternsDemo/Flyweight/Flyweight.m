//
//  Flyweight.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/15.
//  Copyright © 2020 william. All rights reserved.
//

#import "Flyweight.h"

@implementation Flyweight

- (void)operation:(int)extrinsicstate {}

@end


@implementation ConcreteFlyweight

- (void)operation:(int)extrinsicstate
{
    NSLog(@"具体Flyweight:%d",extrinsicstate);
}

@end


@implementation UnsharedConcreteFlyweight

- (void)operation:(int)extrinsicstate
{
    NSLog(@"不共享的具体Flyweight:%d",extrinsicstate);
}

@end
