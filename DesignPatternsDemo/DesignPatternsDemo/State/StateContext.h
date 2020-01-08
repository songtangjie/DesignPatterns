//
//  StateContext.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"

NS_ASSUME_NONNULL_BEGIN

@interface StateContext : NSObject

@property (nonatomic, strong) State *state;

- (instancetype)initWithState:(State *)state;

- (void)request;

@end

NS_ASSUME_NONNULL_END
