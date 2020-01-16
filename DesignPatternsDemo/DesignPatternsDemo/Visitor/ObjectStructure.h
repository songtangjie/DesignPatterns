//
//  ObjectStructure.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/16.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Visitor.h"

NS_ASSUME_NONNULL_BEGIN

@interface ObjectStructure : NSObject

- (void)attach:(Element *)element;

- (void)detach:(Element *)element;

- (void)accept:(Visitor *)visitor;

@end

NS_ASSUME_NONNULL_END
