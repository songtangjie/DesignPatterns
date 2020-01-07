//
//  StockObserver.h
//  DesignPatternsDemo
//
//  Created by william on 2020/1/7.
//  Copyright © 2020 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserVerSubject.h"

NS_ASSUME_NONNULL_BEGIN

@interface StockObserver : NSObject

- (instancetype)initWithStr:(NSString *)name subJect:(ObserVerSubject *)subJect;

- (void)closeStockMarket;

@end

@interface NBAObserver : NSObject

- (instancetype)initWithStr:(NSString *)name subJect:(ObserVerSubject *)subJect;

- (void)closeStockMarket;

@end

NS_ASSUME_NONNULL_END
