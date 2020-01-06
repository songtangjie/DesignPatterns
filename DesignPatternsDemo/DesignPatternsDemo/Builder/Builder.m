//
//  Builder.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/6.
//  Copyright © 2020 william. All rights reserved.
//

#import "Builder.h"

@implementation Builder

- (void)buildPartA
{
    
}

- (void)buildPartB
{
    
}

- (Product *)getResult
{
    return [Product new];
}

@end



@interface ConcreteBuilder1()

@property(nonatomic, strong) Product *product;

@end

@implementation ConcreteBuilder1

- (void)buildPartA
{
    [self.product add:@"部件A"];
}

- (void)buildPartB
{
    [self.product add:@"部件B"];
}

- (Product *)getResult
{
    return self.product;
}

- (Product *)product
{
    if (_product == nil) {
        _product = [Product new];
    }
    return _product;
}

@end


@interface ConcreteBuilder2()

@property(nonatomic, strong) Product *product;

@end

@implementation ConcreteBuilder2

- (void)buildPartA
{
    [self.product add:@"部件X"];
}

- (void)buildPartB
{
    [self.product add:@"部件Y"];
}

- (Product *)getResult
{
    return self.product;
}

- (Product *)product
{
    if (_product == nil) {
        _product = [Product new];
    }
    return _product;
}


@end
