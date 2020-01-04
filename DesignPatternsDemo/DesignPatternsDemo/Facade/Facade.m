//
//  Facade.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/4.
//  Copyright © 2020 william. All rights reserved.
//

#import "Facade.h"
#import "SubSystemOne.h"

@interface Facade ()

@property (nonatomic, strong) SubSystemOne *one;
@property (nonatomic, strong) SubSystemTwo *two;
@property (nonatomic, strong) SubSystemThree *three;
@property (nonatomic, strong) SubSystemFour *four;

@end

@implementation Facade

- (instancetype)init
{
    if (self = [super init]) {
        self.one = [SubSystemOne new];
        self.two = [SubSystemTwo new];
        self.three = [SubSystemThree new];
        self.four = [SubSystemFour new];
    }
    return self;
}

- (void)methodA
{
    NSLog(@"方法组A()-----");
    [self.one methodOne];
    [self.two methodTwo];
    [self.four methodFour];
}

- (void)methodB
{
    NSLog(@"方法组B()-----");
    [self.two methodTwo];
    [self.three methodThree];
}

@end
