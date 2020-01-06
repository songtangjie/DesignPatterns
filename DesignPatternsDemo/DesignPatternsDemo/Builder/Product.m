//
//  Product.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/6.
//  Copyright © 2020 william. All rights reserved.
//

#import "Product.h"

@interface Product()

@property(nonatomic, strong) NSMutableArray<NSString *> *parts;

@end

@implementation Product

- (void)add:(NSString *)part
{
    [self.parts addObject:part];
}

- (void)show
{
    NSLog(@"产品 创建 ----");
    for (NSString *part in self.parts) {
        NSLog(@"%@",part);
    }
}

- (NSMutableArray<NSString *> *)parts
{
    if (_parts == nil) {
        _parts = [NSMutableArray array];
    }
    return _parts;
}

@end
