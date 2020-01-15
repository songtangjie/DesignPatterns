//
//  FlyweightFactory.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/15.
//  Copyright © 2020 william. All rights reserved.
//

#import "FlyweightFactory.h"

@interface FlyweightFactory()

@property (nonatomic, strong) NSMutableDictionary *flyweights;

@end

@implementation FlyweightFactory

- (instancetype)init
{
    if (self = [super init]) {
        [self.flyweights setObject:[ConcreteFlyweight new] forKey:@"X"];
        [self.flyweights setObject:[ConcreteFlyweight new] forKey:@"Y"];
        [self.flyweights setObject:[ConcreteFlyweight new] forKey:@"Z"];
    }
    return self;
}

- (Flyweight *)getFlyweight:(NSString *)key
{
    return [self.flyweights objectForKey:key];
}

- (NSMutableDictionary *)flyweights
{
    if (_flyweights == nil) {
        _flyweights = [NSMutableDictionary dictionary];
    }
    return _flyweights;
}

@end
