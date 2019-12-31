//
//  SingleFactory.h
//  DesignPatternsDemo
//
//  Created by william on 2019/12/25.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operation.h"

typedef NS_ENUM(NSInteger, OperationType) {
    OperationTypeAdd,
    OperationTypeSub,
    OperationTypeMul,
    OperationTypeDiv
};

NS_ASSUME_NONNULL_BEGIN

@interface SingleFactory : NSObject

/// 返回具体运算实例
+ (Operation *)createOpetate:(OperationType)operate;

@end


NS_ASSUME_NONNULL_END
