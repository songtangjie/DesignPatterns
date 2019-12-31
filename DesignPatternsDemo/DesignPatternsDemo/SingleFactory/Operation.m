//
//  Operation.m
//  DesignPatternsDemo
//
//  Created by william on 2019/12/25.
//  Copyright © 2019 william. All rights reserved.
//

#import "Operation.h"

@interface Operation()

@end

@implementation Operation

- (double)getResult
{
    double result = 0;
    return result;
}

@end


@implementation OperationAdd

- (double)getResult
{
    double result = 0;
    result = self.numberA + self.numberB;
    return result;
}

@end

@implementation OperationSub

- (double)getResult
{
    double result = 0;
    result = self.numberA - self.numberB;
    return result;
}

@end

@implementation OperationMul

- (double)getResult
{
    double result = 0;
    result = self.numberA * self.numberB;
    return result;
}

@end

@implementation OperationDiv

- (double)getResult
{
    double result = 0;
    if (self.numberB == 0) {
        NSAssert(NO, @"除数不能为0.");
    }
    result = self.numberA / self.numberB;
    return result;
}

@end
