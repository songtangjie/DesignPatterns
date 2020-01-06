//
//  Builder.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/6.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

NS_ASSUME_NONNULL_BEGIN

@interface Builder : NSObject

- (void)buildPartA;
- (void)buildPartB;
- (Product *)getResult;

@end


@interface ConcreteBuilder1 : Builder

@end

@interface ConcreteBuilder2 : Builder

@end

NS_ASSUME_NONNULL_END
