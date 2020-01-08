//
//  IFacroty.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IUser.h"
#import "IDepartment.h"

NS_ASSUME_NONNULL_BEGIN

@interface IFacroty : NSObject

- (IUser *)createUser;

- (IDepartment *)createDepartment;

@end


@interface SqlFacroty : IFacroty

@end

@interface AccessFacroty : IFacroty

@end

NS_ASSUME_NONNULL_END
