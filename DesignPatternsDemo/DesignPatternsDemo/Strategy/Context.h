//
//  Context.h
//  DesignPatternsDemo
//
//  Created by william on 2019/12/25.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Strategy.h"

typedef NS_ENUM(NSInteger, StrategyType) {
    StrategyTypeA,
    StrategyTypeB,
    StrategyTypeC
};

NS_ASSUME_NONNULL_BEGIN

@interface Context : NSObject

/// 初始化传参
- (instancetype)initWithStrategy:(StrategyType)type;

/// 具体方法
- (void)contextInterface;

@end

NS_ASSUME_NONNULL_END
