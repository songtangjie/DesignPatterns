//
//  FlyweightFactory.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/15.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flyweight.h"

NS_ASSUME_NONNULL_BEGIN

@interface FlyweightFactory : NSObject

- (Flyweight *)getFlyweight:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
