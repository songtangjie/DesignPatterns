//
//  CompositeComponent.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/11.
//  Copyright © 2020 william. All rights reserved.
//

#import "CompositeComponent.h"

@interface CompositeComponent()

@property (nonatomic, strong) NSString *name;

@end

@implementation CompositeComponent

- (instancetype)initWithName:(NSString *)name
{
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}

- (void)add:(CompositeComponent *)c
{
    
}

- (void)remove:(CompositeComponent *)c
{
    
}

- (void)display:(int)depth
{
    
}

@end


@implementation Leaf

- (void)add:(CompositeComponent *)c
{
    NSLog(@"Cannot add to a leaf");
}

- (void)remove:(CompositeComponent *)c
{
    NSLog(@"Cannot remove to a leaf");
}

- (void)display:(int)depth
{
    NSMutableString *str = [NSMutableString string];
    for (int i = 0; i < depth; i++) {
        [str appendString:@"-"];
    }
    [str appendString:self.name];
    NSLog(@"%@",str);
}

@end



@interface Composite()

@property (nonatomic, strong) NSMutableArray<CompositeComponent *> *children;

@end

@implementation Composite

- (void)add:(CompositeComponent *)c
{
    [self.children addObject:c];
}

- (void)remove:(CompositeComponent *)c
{
    [self.children removeObject:c];
}

- (void)display:(int)depth
{
    NSMutableString *str = [NSMutableString string];
    for (int i = 0; i < depth; i++) {
        [str appendString:@"-"];
    }
    [str appendString:self.name];
    NSLog(@"%@",str);
    
    for (CompositeComponent *component in self.children) {
        [component display:depth+2];
    }
}

- (NSMutableArray<CompositeComponent *> *)children
{
    if (_children == nil) {
        _children = [NSMutableArray array];
    }
    return _children;
}

@end
