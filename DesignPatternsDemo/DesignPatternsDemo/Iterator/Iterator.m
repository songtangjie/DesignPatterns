//
//  Iterator.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import "Iterator.h"

@implementation Iterator

- (NSObject *)first
{
    return nil;
}

- (NSObject *)next
{
    return nil;
}

- (BOOL)isDone
{
    return YES;
}
- (NSObject *)currentItem
{
    return nil;
}

@end


@interface ConcreteIterator()

@property (nonatomic, strong) ConcreteAggregate *aggregate;
@property (nonatomic, assign) int current;

@end

@implementation ConcreteIterator

- (instancetype)initWithAggregate:(ConcreteAggregate *)aggregate
{
    if (self = [super init]) {
        self.aggregate = aggregate;
    }
    return self;
}

- (NSObject *)first
{
    return [self.aggregate getObject:0];
}

- (NSObject *)next
{
    NSObject *ret;
    self.current++;
    if (self.current < [self.aggregate count]) {
        ret = [self.aggregate getObject:self.current];
    }
    return ret;
}

- (BOOL)isDone
{
    return self.current >= [self.aggregate count];
}
- (NSObject *)currentItem
{
    return [self.aggregate getObject:self.current];
}

@end
