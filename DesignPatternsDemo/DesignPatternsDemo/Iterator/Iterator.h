//
//  Iterator.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Aggregate.h"

NS_ASSUME_NONNULL_BEGIN

@interface Iterator : NSObject

- (NSObject *)first;
- (NSObject *)next;
- (BOOL)isDone;
- (NSObject *)currentItem;

@end


@interface ConcreteIterator : Iterator

- (instancetype)initWithAggregate:(ConcreteAggregate *)aggregate;

@end

NS_ASSUME_NONNULL_END
