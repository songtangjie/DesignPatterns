//
//  Memento.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Memento : NSObject

@property (nonatomic, strong) NSString *state;

- (instancetype)initWithState:(NSString *)state;

@end

NS_ASSUME_NONNULL_END
