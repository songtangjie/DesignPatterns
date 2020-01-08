//
//  IUser.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

NS_ASSUME_NONNULL_BEGIN

@interface IUser : NSObject

- (void)insertUser:(User *)user;

- (User *)getUser:(NSString *)ID;

@end

@interface SqlUser : IUser

@end

@interface AccessUser : IUser

@end

NS_ASSUME_NONNULL_END
