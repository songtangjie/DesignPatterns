//
//  Element.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/16.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Visitor;

NS_ASSUME_NONNULL_BEGIN

@interface Element : NSObject

- (void)accept:(Visitor *)visitor;

@end

@interface ConcreteElementA : Element

- (void)operationA;

@end

@interface ConcreteElementB : Element

- (void)operationB;

@end

NS_ASSUME_NONNULL_END
