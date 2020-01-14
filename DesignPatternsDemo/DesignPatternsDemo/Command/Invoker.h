//
//  Invoker.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface Invoker : NSObject

- (void)setCommand:(Command *)command;

- (void)executeCommand;

@end

NS_ASSUME_NONNULL_END
