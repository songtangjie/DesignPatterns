//
//  Strategy.h
//  DesignPatternsDemo
//
//  Created by william on 2019/12/25.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface Strategy : NSObject

- (void)algorithmInterface;

@end


@interface ConcreteStrategyA : Strategy

@end

@interface ConcreteStrategyB : Strategy

@end

@interface ConcreteStrategyC : Strategy

@end

NS_ASSUME_NONNULL_END
