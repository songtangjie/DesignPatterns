//
//  CompositeComponent.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/11.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CompositeComponent : NSObject

- (instancetype)initWithName:(NSString *)name;

- (void)add:(CompositeComponent *)c;
- (void)remove:(CompositeComponent *)c;
- (void)display:(int)depth;

@end

@interface Leaf : CompositeComponent

@end

@interface Composite : CompositeComponent

@end

NS_ASSUME_NONNULL_END
