//
//  InterpreterContext.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/15.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InterpreterContext : NSObject

@property (nonatomic, strong) NSString *input;
@property (nonatomic, strong) NSString *output;

@end

NS_ASSUME_NONNULL_END
