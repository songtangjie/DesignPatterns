//
//  Mediator.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/15.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Colleague.h"

@class Colleague;

NS_ASSUME_NONNULL_BEGIN

@interface Mediator : NSObject

- (void)send:(NSString *)message colleague:(Colleague *)colleague;

@end


@interface ConcreteMediator : Mediator

- (void)setColleague1:(ConcreteColleague1 *)colleague1;

- (void)setColleague2:(ConcreteColleague2 *)colleague2;

@end

NS_ASSUME_NONNULL_END
