//
//  Aggregate.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Iterator;

NS_ASSUME_NONNULL_BEGIN

@interface Aggregate : NSObject

- (Iterator *)createIterator;

@end


@interface ConcreteAggregate : Aggregate

- (NSInteger)count;

- (NSObject *)getObject:(NSInteger)index;

- (void)addObject:(NSInteger)index value:(NSObject *)value;

@end

NS_ASSUME_NONNULL_END
