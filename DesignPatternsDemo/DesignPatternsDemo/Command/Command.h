//
//  Command.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Receiver.h"

NS_ASSUME_NONNULL_BEGIN

@interface Command : NSObject

- (instancetype)initWithCommand:(Receiver *)receiver;

- (void)execute;

@end

@interface ConcreteCommand : Command

@end

NS_ASSUME_NONNULL_END
