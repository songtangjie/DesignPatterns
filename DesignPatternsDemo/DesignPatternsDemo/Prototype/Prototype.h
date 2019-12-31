//
//  Prototype.h
//  DesignPatternsDemo
//
//  Created by william on 2019/12/31.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Prototype : NSObject<NSCopying>
/// ID
@property (nonatomic, strong) NSString *ID;

- (instancetype)initWithID:(NSString *)ID;

- (Prototype *)clone;

@end


@interface ContretePrototype1 : Prototype

@end

NS_ASSUME_NONNULL_END
