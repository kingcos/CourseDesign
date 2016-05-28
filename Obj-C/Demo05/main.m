#import <Foundation/Foundation.h>
#import "Dog.h"
#import "Cat.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    Dog *d = [Dog new];
    Cat *c = [Cat new];
    [d eat];
    [c eat];
    
    // 多态
    Animal *a1 = [Dog new];
    Animal *a2 = [Cat new];
    [a1 eat];
    [a2 eat];
    
    [(Dog *)a1 bark];
    
    Person *p = [Person new];
    [p feedAnimal:a1];
    [p feedAnimal:a2];
    return 0;
}