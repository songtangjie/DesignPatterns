//
//  main.m
//  DesignPatternsDemo
//
//  Created by william on 2019/12/25.
//  Copyright © 2019 william. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SingleFactory.h"
#import "Context.h"
#import "Decorator.h"
#import "ConcreteComponent.h"
#import "Proxy.h"
#import "IFactory.h"
#import "Prototype.h"
#import "ConcreteClassA.h"
#import "Facade.h"

void testSingleFactory()
{
    Operation *oper = [SingleFactory createOpetate:OperationTypeAdd];
    oper.numberA = 1;
    oper.numberB = 2;
    NSLog(@"%.2f",[oper getResult]);
}

void testStrategy()
{
    Context *context;
    context = [[Context alloc] initWithStrategy:StrategyTypeA];
    [context contextInterface];
    
    context = [[Context alloc] initWithStrategy:StrategyTypeB];
    [context contextInterface];
    
    context = [[Context alloc] initWithStrategy:StrategyTypeC];
    [context contextInterface];
}

void testDecorator()
{
    ConcreteComponent *c = [ConcreteComponent new];
    ConcreteDecoratorA *d1 = [ConcreteDecoratorA new];
    ConcreteDecoratorB *d2 = [ConcreteDecoratorB new];
    
    [d1 setComponent:c];
    [d2 setComponent:d1];
    [d2 operation];
}

void testProxy()
{
    Proxy *proxy = [Proxy new];
    [proxy request];
}

void testFactoryMethod()
{
    IFactory *factory = [UndergraduateFacroty new];
    LeiFeng *student = [factory createLeifeng];
    
    [student buyRice];
    [student sweep];
    [student wash];
}

void testPrototype()
{
    ContretePrototype1 *p1 = [[ContretePrototype1 alloc] initWithID:@"I"];
    ContretePrototype1 *c1 = (ContretePrototype1 *)[p1 clone];
    NSLog(@"Default: %@ ---- Cloned: %@",p1.ID,c1.ID);
}

void testTemplateMethod()
{
    AbstractClass *c;
    
    c = [ConcreteClassA new];
    [c templateMethod];
    
    c = [ConcreteClassB new];
    [c templateMethod];
}

void testFacade()
{
    Facade *facade = [[Facade alloc] init];
    [facade methodA];
    [facade methodB];
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        testSingleFactory();
//        testStrategy();
//        testDecorator();
//        testProxy();
//        testFactoryMethod();
//        testPrototype();
//        testTemplateMethod();
        testFacade();
    }
    return 0;
}

