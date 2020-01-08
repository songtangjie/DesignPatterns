//
//  State.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

@class StateContext;

NS_ASSUME_NONNULL_BEGIN

@interface State : NSObject

- (void)handle:(StateContext *)contexst;

@end

@interface ConcreteStateA : State

@end

@interface ConcreteStateB : State

@end

NS_ASSUME_NONNULL_END
