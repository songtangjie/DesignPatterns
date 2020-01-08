//
//  SingleFactory.m
//  DesignPatternsDemo
//
//  Created by william on 2019/12/25.
//  Copyright © 2019 william. All rights reserved.
//

#import "SingleFactory.h"

static NSString * const OperationAddStr = @"OperationAdd";
static NSString * const OperationSubStr = @"OperationSub";
static NSString * const OperationMulStr = @"OperationMul";
static NSString * const OperationDivStr = @"OperationDiv";

@implementation SingleFactory

+ (Operation *)createOpetate:(OperationType)operate
{
    Operation *oper;
    switch (operate) {
        case OperationTypeAdd:
//            oper = [[OperationAdd alloc] init];
            //反射机制生成具体类【可配置plist表或者服务端下发的方式生成】
            oper = [NSClassFromString(OperationAddStr) new];
            break;
        case OperationTypeSub:
//                oper = [[OperationSub alloc] init];
            oper = [NSClassFromString(OperationSubStr) new];
            break;
        case OperationTypeMul:
//                oper = [[OperationMul alloc] init];
            oper = [NSClassFromString(OperationMulStr) new];
            break;
        case OperationTypeDiv:
//                oper = [[OperationDiv alloc] init];
            oper = [NSClassFromString(OperationDivStr) new];
            break;
        default:
            break;
    }

    return oper;
}

@end

