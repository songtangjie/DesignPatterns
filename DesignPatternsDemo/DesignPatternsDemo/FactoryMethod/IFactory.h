//
//  IFactory.h
//  DesignPatternsDemo
//
//  Created by william on 2019/12/31.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LeiFeng.h"

NS_ASSUME_NONNULL_BEGIN

@interface IFactory : NSObject

/// 构造具体实例
- (LeiFeng *)createLeifeng;

@end


@interface UndergraduateFacroty : IFactory

@end

@interface VolunteerFacroty : IFactory

@end

NS_ASSUME_NONNULL_END
