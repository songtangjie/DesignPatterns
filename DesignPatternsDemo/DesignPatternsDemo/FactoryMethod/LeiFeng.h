//
//  LeiFeng.h
//  DesignPatternsDemo
//
//  Created by william on 2019/12/31.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LeiFeng : NSObject

/// 扫地
- (void)sweep;

/// 洗衣
- (void)wash;

/// 买米
- (void)buyRice;

@end


@interface Undergraduate : LeiFeng

@end

@interface Volunteer : LeiFeng

@end

NS_ASSUME_NONNULL_END
