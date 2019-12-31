//
//  Operation.h
//  DesignPatternsDemo
//
//  Created by william on 2019/12/25.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Operation : NSObject

/// 数字1
@property (nonatomic, assign) double numberA;
/// 数字2
@property (nonatomic, assign) double numberB;

/// 返回运算结果
- (double)getResult;

@end


@interface OperationAdd : Operation

@end

@interface OperationSub : Operation

@end

@interface OperationMul : Operation

@end

@interface OperationDiv : Operation

@end

NS_ASSUME_NONNULL_END
