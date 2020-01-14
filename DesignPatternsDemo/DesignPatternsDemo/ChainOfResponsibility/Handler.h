//
//  Handler.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/14.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Handler : NSObject

- (void)setSuccessor:(Handler *)successor;

- (void)handleRequest:(int)request;

@end


@interface ConcreteHandler1 : Handler

@end

@interface ConcreteHandler2 : Handler

@end

@interface ConcreteHandler3 : Handler

@end


NS_ASSUME_NONNULL_END
