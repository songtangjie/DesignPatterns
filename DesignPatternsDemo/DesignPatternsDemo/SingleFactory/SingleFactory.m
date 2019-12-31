//
//  SingleFactory.m
//  DesignPatternsDemo
//
//  Created by william on 2019/12/25.
//  Copyright © 2019 william. All rights reserved.
//

#import "SingleFactory.h"

@implementation SingleFactory

+ (Operation *)createOpetate:(OperationType)operate
{
    Operation *oper;
    switch (operate) {
        case OperationTypeAdd:
            oper = [[OperationAdd alloc] init];
            break;
        case OperationTypeSub:
                oper = [[OperationSub alloc] init];
            break;
        case OperationTypeMul:
                oper = [[OperationMul alloc] init];
            break;
        case OperationTypeDiv:
                oper = [[OperationDiv alloc] init];
            break;
        default:
            break;
    }

    return oper;
}

@end

