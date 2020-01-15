//
//  Flyweight.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/15.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Flyweight : NSObject

- (void)operation:(int)extrinsicstate;

@end


@interface ConcreteFlyweight : Flyweight

@end

@interface UnsharedConcreteFlyweight : Flyweight

@end

NS_ASSUME_NONNULL_END
