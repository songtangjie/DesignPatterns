//
//  Visitor.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/16.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Element.h"

NS_ASSUME_NONNULL_BEGIN

@interface Visitor : NSObject

- (void)visitConcreteElementA:(ConcreteElementA *)concreteElementA;

- (void)visitConcreteElementB:(ConcreteElementB *)concreteElementB;

@end


@interface ConcreteVisitor1 : Visitor

@end

@interface ConcreteVisitor2 : Visitor

@end

NS_ASSUME_NONNULL_END
