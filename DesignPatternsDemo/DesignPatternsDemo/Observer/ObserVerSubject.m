//
//  ObserVerSubject.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/7.
//  Copyright © 2020 william. All rights reserved.
//

#import "ObserVerSubject.h"

@implementation ObserVerSubject

- (void)notify
{
}

@end


@implementation Boss

- (void)notify
{
    if ([self.delegate respondsToSelector:@selector(update)]) {
        [self.delegate update];
    }
}

@end
