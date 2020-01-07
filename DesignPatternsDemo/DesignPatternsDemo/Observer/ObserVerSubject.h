//
//  ObserVerSubject.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/7.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol UpdateDelegate <NSObject>

- (void)update;

@end

@interface ObserVerSubject : NSObject

@property(nonatomic, strong) NSString *subjectState;

- (void)notify;

@end


@interface Boss : ObserVerSubject

@property (nonatomic, weak) id<UpdateDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
