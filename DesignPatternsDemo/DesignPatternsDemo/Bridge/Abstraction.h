//
//  Abstraction.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Implementor.h"

NS_ASSUME_NONNULL_BEGIN

@interface Abstraction : NSObject

- (void)setImplementor:(Implementor *)implementor;

- (void)operation;

@end

@interface RefinedAbstraction : Abstraction

@end

NS_ASSUME_NONNULL_END
