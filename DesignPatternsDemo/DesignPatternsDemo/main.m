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
#import "Director.h"
#import "StockObserver.h"
#import "IFacroty.h"
#import "StateContext.h"

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

void testBuilder()
{
    Director *director = [Director new];
    Builder *b1 = [ConcreteBuilder1 new];
    Builder *b2 = [ConcreteBuilder2 new];
    
    [director construct:b1];
    Product *p1 = [b1 getResult];
    [p1 show];
    
    [director construct:b2];
    Product *p2 = [b2 getResult];
    [p2 show];
}

// oc的观察者模式有：KVO、代理、通知、block
void testObserver()
{
    Boss *huhansan = [Boss new];
    
    StockObserver *tongshi1 = [[StockObserver alloc] initWithStr:@"小张" subJect:huhansan];
    NBAObserver *tongshi2 = [[NBAObserver alloc] initWithStr:@"小王" subJect:huhansan];
    
//    huhansan.delegate = tongshi1;
    // oc的代理模式是一对一，所以可用通知方式一对多，这里方便演示
    huhansan.delegate = tongshi2;
    
    huhansan.subjectState = @"我胡汉三回来了！";
    [huhansan notify];
}

void testAbstractFactory()
{
    User *user = [User new];
    Department *dept = [Department new];
    
//    IFacroty *factory = [SqlFacroty new];
    IFacroty *factory = [AccessFacroty new];
    
    IUser *iu = [factory createUser];
    [iu insertUser:user];
    [iu getUser:@"1"];
    
    IDepartment *ide = [factory createDepartment];
    [ide inserDepartment:dept];
    [ide getDepartment:@"1"];
}

void testState()
{
    StateContext *c = [[StateContext alloc] initWithState:[ConcreteStateA new]];
    [c request];
    [c request];
    [c request];
    [c request];
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
//        testFacade();
//        testBuilder();
//        testObserver();
//        testAbstractFactory();
        testState();
    }
    return 0;
}

