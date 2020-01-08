//
//  IDepartment.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import "IDepartment.h"

@implementation IDepartment

- (void)inserDepartment:(Department *)department
{
    
}

- (Department *)getDepartment:(NSString *)ID
{
    return nil;
}

@end


@implementation SqlDepartment

- (void)inserDepartment:(Department *)department
{
    NSLog(@"在SqlServe中给Department表增加了一条记录");
}

- (Department *)getDepartment:(NSString *)ID
{
    NSLog(@"在SqlServe中根据ID得到Department表的一条记录");
    return nil;
}

@end


@implementation AccessDepartment

- (void)inserDepartment:(Department *)department
{
    NSLog(@"在Access中给Department表增加了一条记录");
}

- (Department *)getDepartment:(NSString *)ID
{
    NSLog(@"在Access中根据ID得到Department表的一条记录");
    return nil;
}

@end
