//
//  Director.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/6.
//  Copyright © 2020 william. All rights reserved.
//

#import "Director.h"

@implementation Director

- (void)construct:(Builder *)builder
{
    [builder buildPartA];
    [builder buildPartB];
}

@end
