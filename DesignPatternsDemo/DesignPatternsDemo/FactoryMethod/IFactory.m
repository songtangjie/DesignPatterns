//
//  IFactory.m
//  DesignPatternsDemo
//
//  Created by william on 2019/12/31.
//  Copyright © 2019 william. All rights reserved.
//

#import "IFactory.h"

@implementation IFactory

/// 构造具体实例
- (LeiFeng *)createLeifeng
{
    return [LeiFeng new];
}

@end


@implementation UndergraduateFacroty

- (LeiFeng *)createLeifeng
{
    return [Undergraduate new];
}

@end

@implementation VolunteerFacroty

- (LeiFeng *)createLeifeng
{
    return [Volunteer new];
}

@end

