//
//  Aggregate.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import "Aggregate.h"
#import "Iterator.h"

@implementation Aggregate

- (Iterator *)createIterator
{
    return nil;
}

@end


@interface ConcreteAggregate()

@property (nonatomic, strong) NSMutableArray *items;

@end

@implementation ConcreteAggregate

- (Iterator *)createIterator
{
    return nil;
}

- (NSInteger)count
{
    return [self.items count];
}

- (NSObject *)getObject:(NSInteger)index
{
    return [self.items objectAtIndex:index];
}

- (void)addObject:(NSInteger)index value:(NSObject *)value
{
    [self.items insertObject:value atIndex:index];
}

- (NSMutableArray *)items
{
    if (_items == nil) {
        _items = [NSMutableArray array];
    }
    return _items;
}
@end
