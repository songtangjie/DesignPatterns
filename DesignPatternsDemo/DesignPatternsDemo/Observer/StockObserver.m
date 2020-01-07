//
//  StockObserver.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/7.
//  Copyright © 2020 william. All rights reserved.
//

#import "StockObserver.h"

@interface StockObserver()<UpdateDelegate>

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) ObserVerSubject *subJect;

@end

@implementation StockObserver

- (instancetype)initWithStr:(NSString *)name subJect:(ObserVerSubject *)subJect
{
    if (self = [super init]) {
        self.name = name;
        self.subJect = subJect;
    }
    return self;
}

- (void)closeStockMarket
{
    NSLog(@"%@ %@关闭股票行情，继续工作!",self.subJect.subjectState,self.name);
}

/// 代理回调
- (void)update
{
    [self closeStockMarket];
}

@end


@interface NBAObserver()<UpdateDelegate>

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) ObserVerSubject *subJect;

@end

@implementation NBAObserver

- (instancetype)initWithStr:(NSString *)name subJect:(ObserVerSubject *)subJect
{
    if (self = [super init]) {
        self.name = name;
        self.subJect = subJect;
    }
    return self;
}

- (void)closeStockMarket
{
    NSLog(@"%@ %@关闭NBA直播，继续工作!",self.subJect.subjectState,self.name);
}

/// 代理回调
- (void)update
{
    [self closeStockMarket];
}


@end
