//
//  Proxy.m
//  DesignPatternsDemo
//
//  Created by william on 2019/12/30.
//  Copyright © 2019 william. All rights reserved.
//

#import "Proxy.h"
#import "RealSubject.h"

@interface Proxy()

@property (nonatomic, strong) RealSubject *realSubject;

@end

@implementation Proxy

- (void)request
{
    if (!self.realSubject) {
        self.realSubject = [RealSubject new];
    }
    [self.realSubject request];
}

@end
