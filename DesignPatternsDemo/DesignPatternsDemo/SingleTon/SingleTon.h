//
//  SingleTon.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SingleTon : NSObject

@property (nonatomic, strong) NSString *text;

+ (SingleTon *)shared;

@end

NS_ASSUME_NONNULL_END
