//
//  IDepartment.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Department.h"

NS_ASSUME_NONNULL_BEGIN

@interface IDepartment : NSObject

- (void)inserDepartment:(Department *)department;

- (Department *)getDepartment:(NSString *)ID;

@end


@interface SqlDepartment : IDepartment

@end

@interface AccessDepartment : IDepartment

@end

NS_ASSUME_NONNULL_END
