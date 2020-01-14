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
#import "Adapter.h"
#import "Caretaker.h"
#import "Originator.h"
#import "CompositeComponent.h"
#import "Iterator.h"
#import "SingleTon.h"

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

void testAdapter()
{
    Target *target = [Adapter new];
    [target request];
}

void testMemento()
{
    Originator *o = [Originator new];
    o.state = @"On";
    [o show];
    
    //保存状态
    Caretaker *c = [Caretaker new];
    c.memento = [o createMemento];
    
    o.state = @"Off";
    [o show];
    
    //恢复状态
    [o setMemento:c.memento];
    [o show];
}

void testComposite()
{
    Composite *root = [[Composite alloc] initWithName:@"root"];
    [root add:[[Leaf alloc] initWithName:@"Leaf A"]];
    [root add:[[Leaf alloc] initWithName:@"Leaf B"]];
    
    Composite *comp = [[Composite alloc] initWithName:@"Composite X"];
    [comp add:[[Leaf alloc] initWithName:@"Leaf XA"]];
    [comp add:[[Leaf alloc] initWithName:@"Leaf XB"]];
    
    [root add:comp];
    
    Composite *comp2 = [[Composite alloc] initWithName:@"Composite XY"];
    [comp2 add:[[Leaf alloc] initWithName:@"Leaf XYA"]];
    [comp2 add:[[Leaf alloc] initWithName:@"Leaf XYB"]];
    
    [comp add:comp2];
    
    [root add:[[Leaf alloc] initWithName:@"Leaf C"]];
    
    Leaf *leaf = [[Leaf alloc] initWithName:@"Leaf D"];
    [root add:leaf];
    [root remove:leaf];
    
    [root display:1];
}

void testIterator()
{
    ConcreteAggregate *a = [ConcreteAggregate new];
    [a addObject:0 value:@"大鸟"];
    [a addObject:1 value:@"小菜"];
    [a addObject:2 value:@"行李"];
    [a addObject:3 value:@"老外"];
    [a addObject:4 value:@"公交内部员工"];
    [a addObject:5 value:@"小偷"];
    
    Iterator *i = [[ConcreteIterator alloc] initWithAggregate:a];
    NSObject *item = [i first];
    while (![i isDone]) {
        NSLog(@"%@请买车票",[i currentItem]);
        [i next];
    }
}

void testSingleTon()
{
    SingleTon *singleTon1 = [SingleTon shared];
    singleTon1.text = @"test1";
    NSLog(@"%@---%@",singleTon1,singleTon1.text);
    
    SingleTon *singleTon2 = [SingleTon shared];
    NSLog(@"%@---%@",singleTon2,singleTon2.text);
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
//        testState();
//        testAdapter();
//        testMemento();
//        testComposite();
//        testIterator();
        testSingleTon();
    }
    return 0;
}

