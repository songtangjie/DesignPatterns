//
//  Adapter.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import "Adapter.h"
#import "Adaptee.h"

@interface Adapter()

@property(nonatomic, strong) Adaptee *adaptee;

@end

@implementation Adapter

- (void)request
{
    [self.adaptee specificRequest];
}

- (Adaptee *)adaptee
{
    if (_adaptee == nil) {
        _adaptee = [Adaptee new];
    }
    return _adaptee;
}

@end
