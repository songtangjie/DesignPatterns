//
//  Colleague.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/15.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Mediator;

NS_ASSUME_NONNULL_BEGIN

@interface Colleague : NSObject

- (instancetype)initWithMediator:(Mediator *)mediator;

@end


@interface ConcreteColleague1 : Colleague

- (void)send:(NSString *)message;

- (void)notify:(NSString *)message;

@end

@interface ConcreteColleague2 : Colleague

- (void)send:(NSString *)message;

- (void)notify:(NSString *)message;

@end

NS_ASSUME_NONNULL_END
