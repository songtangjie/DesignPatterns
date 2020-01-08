//
//  Memento.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import "Memento.h"

@implementation Memento

- (instancetype)initWithState:(NSString *)state
{
    if (self = [super init]) {
        self.state = state;
    }
    return self;
}

@end
