//
//  Product.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/6.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Product : NSObject

/// 添加产品部件
- (void)add:(NSString *)part;

- (void)show;

@end

NS_ASSUME_NONNULL_END
