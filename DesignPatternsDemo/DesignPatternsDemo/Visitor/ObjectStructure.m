//
//  ObjectStructure.m
//  DesignPatternsDemo
//
//  Created by william on 2020/1/16.
//  Copyright © 2020 william. All rights reserved.
//

#import "ObjectStructure.h"

@interface ObjectStructure()

@property (nonatomic, strong) NSMutableArray<Element *> *elements;

@end

@implementation ObjectStructure

- (void)attach:(Element *)element
{
    [self.elements addObject:element];
}

- (void)detach:(Element *)element
{
    [self.elements removeObject:element];
}

- (void)accept:(Visitor *)visitor
{
    for (Element *element in self.elements) {
        [element accept:visitor];
    }
}

- (NSMutableArray<Element *> *)elements
{
    if (_elements == nil) {
        _elements = [NSMutableArray array];
    }
    return _elements;
}

@end
