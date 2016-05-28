#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    /*
    // block 中可以访问外面的变量
    // 也可定义和外界同名的变量
    int a = 10;
    void (^blockDemo1)() = ^{
        // Block 中的变量是外界的变量的拷贝
        NSLog(@"B: a = %i, &a = %p", a, &a);
        // 默认情况下，不可在 block 中修改外界变量的值
//        a = 50;
        int a = 100;
        NSLog(@"B: a = %i", a);
    };
    a = 20;
    blockDemo1();
    // Block 中的变量和外界的变量并不是同一个变量
    // 修改外面的并不影响内部已经拷贝的
    NSLog(@"a = %i, &a = %p", a, &a);
    
    NSLog(@"---");
    */
    
    /*
    int b = 20;
    void (^blockDemo2)() = ^{
//        b = 50;
        NSLog(@"B: b = %i", b);
    };
    NSLog(@"b = %i", b);
    blockDemo2();
    
    NSLog(@"---");
    */
    
    /*
    // 定义时加上 __block 即可改变外界变量值
    __block int c = 10;
    NSLog(@"c = %i &c = %p", c, &c);
    void (^blockDemo3)() = ^{
        c = 100;
        NSLog(@"B: c = %i &c = %p", c, &c);
    };
    blockDemo3();
    
    NSLog(@"---");
    */
    
    /*
    // 如果没有添加 __block 是值传递
    int a = 10;
    void (*myBlock)() = &__main_block_impl_0( __main_block_func_0, &__main_block_desc_0_DATA, a);
    (myBlock)->FuncPtr)(myBlock);
    
    // 如果加上 __block 之后就是地址传递
    a =  10;
    void (*myBlock)() = &__main_block_impl_0(__main_block_func_0, &__main_block_desc_0_DATA, &a, 570425344);
     */
    
    /*
    // MRC 略
    
    // ARC
    // 如果在做 iOS 开发时，在 ARC 中不这样写容易导致循环引用
    Person *p = [[Person alloc] init];
    __weak Person *weakP = p;
    */
    return 0;
}
