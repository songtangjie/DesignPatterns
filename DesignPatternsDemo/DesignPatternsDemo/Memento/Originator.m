//
//  Originator.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import "Originator.h"

@implementation Originator

- (Memento *)createMemento
{
    return [[Memento alloc] initWithState:self.state];
}

- (void)setMemento:(Memento *)memento
{
    self.state = memento.state;
}

- (void)show
{
    NSLog(@"State = %@",self.state);
}

@end
