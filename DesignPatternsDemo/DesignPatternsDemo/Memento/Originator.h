//
//  Originator.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/8.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Memento.h"

NS_ASSUME_NONNULL_BEGIN

@interface Originator : NSObject

@property (nonatomic, strong) NSString *state;

- (Memento *)createMemento;

- (void)setMemento:(Memento *)memento;

- (void)show;

@end

NS_ASSUME_NONNULL_END
