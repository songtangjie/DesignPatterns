//
//  IFacroty.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import "IFacroty.h"

@implementation IFacroty

- (IUser *)createUser
{
    return nil;
}

- (IDepartment *)createDepartment
{
    return nil;
}

@end


@implementation SqlFacroty

- (IUser *)createUser
{
    return [SqlUser new];
}

- (IDepartment *)createDepartment
{
    return [SqlDepartment new];
}


@end

@implementation AccessFacroty

- (IUser *)createUser
{
    return [AccessUser new];
}

- (IDepartment *)createDepartment
{
    return [AccessDepartment new];
}


@end
