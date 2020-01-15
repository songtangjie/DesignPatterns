//
//  AbstractExpression.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/15.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InterpreterContext.h"

NS_ASSUME_NONNULL_BEGIN

@interface AbstractExpression : NSObject

- (void)interpreter:(InterpreterContext *)context;

@end

@interface TerminalExpression : AbstractExpression

@end

@interface NonterminalExpression : AbstractExpression

@end

NS_ASSUME_NONNULL_END
