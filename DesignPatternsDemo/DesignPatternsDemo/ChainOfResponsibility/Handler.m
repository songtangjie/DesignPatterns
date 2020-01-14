//
//  Handler.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import "Handler.h"

@interface Handler()

@property (nonatomic, strong) Handler *successor;

@end

@implementation Handler

- (void)setSuccessor:(Handler *)successor
{
    _successor = successor;
}

- (void)handleRequest:(int)request {}

@end


@implementation ConcreteHandler1

- (void)handleRequest:(int)request
{
    if (request >= 0 && request < 10) {
        NSLog(@"%@处理请求%d",[self className],request);
    }
    else if (self.successor) {
        [self.successor handleRequest:request];
    }
}

@end

@implementation ConcreteHandler2

- (void)handleRequest:(int)request
{
    if (request >= 10 && request < 20) {
        NSLog(@"%@处理请求%d",[self className],request);
    }
    else if (self.successor) {
        [self.successor handleRequest:request];
    }
}

@end

@implementation ConcreteHandler3

- (void)handleRequest:(int)request
{
    if (request >= 20 && request < 30) {
        NSLog(@"%@处理请求%d",[self className],request);
    }
    else if (self.successor) {
        [self.successor handleRequest:request];
    }
}

@end
