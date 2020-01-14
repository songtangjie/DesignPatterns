//
//  SingleTon.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import "SingleTon.h"

@implementation SingleTon

+ (SingleTon *)shared
{
    static SingleTon *shared = nil;
    static dispatch_once_t once = 0;
    dispatch_once(&once, ^{
        shared = [[SingleTon alloc] init];
    });
    return shared;
}

@end
