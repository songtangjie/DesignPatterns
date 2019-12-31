//
//  Prototype.m
//  DesignPatternsDemo
//
//  Created by william on 2019/12/31.
//  Copyright © 2019 william. All rights reserved.
//

#import "Prototype.h"

@interface Prototype()

@end

@implementation Prototype

- (instancetype)initWithID:(NSString *)ID
{
    if (self = [super init]) {
        self.ID = ID;
    }
    return self;
}

- (Prototype *)clone
{
    return [self copy];
}

- (id)copyWithZone:(NSZone *)zone
{
    Prototype *copy = [Prototype new];
    return copy;
}

@end


@implementation ContretePrototype1

- (Prototype *)clone
{
    return [self copy];
}


@end
