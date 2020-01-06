//
//  Director.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/6.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Builder.h"

NS_ASSUME_NONNULL_BEGIN

@interface Director : NSObject

- (void)construct:(Builder *)builder;

@end

NS_ASSUME_NONNULL_END
