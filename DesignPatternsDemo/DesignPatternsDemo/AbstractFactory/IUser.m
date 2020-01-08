//
//  IUser.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import "IUser.h"

@implementation IUser

- (void)insertUser:(User *)user
{
    
}

- (User *)getUser:(NSString *)ID
{
    return nil;
}

@end

@implementation SqlUser

- (void)insertUser:(User *)user
{
    NSLog(@"在SqlServe中给User表增加了一条记录");
}

- (User *)getUser:(NSString *)ID
{
    NSLog(@"在SqlServe中根据ID得到User表的一条记录");
    return nil;
}

@end

@implementation AccessUser

- (void)insertUser:(User *)user
{
    NSLog(@"在Access中给User表增加了一条记录");
}

- (User *)getUser:(NSString *)ID
{
    NSLog(@"在Access中根据ID得到User表的一条记录");
    return nil;
}

@end
