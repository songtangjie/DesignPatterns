//
//  Decorator.h
//  DesignPatternsDemo
//
//  Created by william on 2019/12/30.
//  Copyright © 2019 william. All rights reserved.
//

#import "DecoratorComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface Decorator : DecoratorComponent

- (void)setComponent:(DecoratorComponent *)component;

@end

// ------------------------------
@interface ConcreteDecoratorA : Decorator

@end

// ------------------------------
@interface ConcreteDecoratorB : Decorator

@end

NS_ASSUME_NONNULL_END
