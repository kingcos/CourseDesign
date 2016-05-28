#import <Foundation/Foundation.h>

void funcPointer() {
    printf("---\n");
    printf("指向函数的指针。\n");
    printf("---\n");
}

int sum(int num1, int num2) {
    return num1 + num2;
}

int minus(int num1, int num2) {
    return num1 - num2;
}

// 简化指向函数的指针
typedef int (*PointToCalculate)(int, int);

// 简化 Block
typedef int (^BlockForCalculate)(int, int);

void dailyWork(void (^othWork)()) {
    NSLog(@"吃饭");
    othWork();
    NSLog(@"睡觉");
}

void monday() {
    dailyWork(^{
        NSLog(@"努力工作");
    });
}

void sunday() {
    dailyWork(^{
        NSLog(@"打豆豆");
    });
}

int main(int argc, const char * argv[]) {
    /*
    // 指向函数的指针的定义
    // void: 指向的函数没有返回值
    // (): 指向的函数没有形参
    // (*pToFunc): pToFunc 是一个指向函数的指针
    void (*pToFunc)();
    pToFunc = funcPointer;
    pToFunc();
    */
    
    /*
    // block 变量定义，需告诉该变量将来保存的代码有无返回值和形参
    // void: 无返回值 (): 无形参
    // 如果 block 没有参数, 那么 ^ 后面的 () 可以省略
    void (^blockToCode)();
//    blockToCode = ^{ printf("指向代码的 Block。\n"); };
    blockToCode = ^(){ printf("指向代码的 Block。\n"); };
    // 调用 block
    blockToCode();
    */
    
    /*
    int (*test1)(int, int);
    test1 = sum;
    NSLog(@"%i", test1(1, 5));
    NSLog(@"---");
    int (^test2)(int, int) = ^(int num1, int num2){
        return num1 + num2;
    };
    NSLog(@"%i", test2(1, 3));
    */
    
    /*
    // 定义并初始化 block
    int (^printBlock)(int)= ^(int num){
        for (int i = 0; i < num; ++i) {
            NSLog(@"---");
        }
        return 1;
    };
    printBlock(2);
    */
    
    /*
    //    int (*pointToSum)(int, int) = sum;
    PointToCalculate pointToSum = sum;
    NSLog(@"Sum = %i", pointToSum(20, 10));
    
    //    int (*pointToMinus)(int, int) = minus;
    PointToCalculate pointToMinus = minus;
    NSLog(@"Minus = %i", pointToMinus(20, 10));
    
    //    int (^blockForSum)(int, int);
    BlockForCalculate blockForSum = ^(int num1, int num2){
        return num1 + num2;
    };
    NSLog(@"Sum = %i", blockForSum(200, 100));
    
    //    int (^blockForMinus)(int, int);
    BlockForCalculate blockForMinus = ^(int num1, int num2){
        return num1 - num2;
    };
    NSLog(@"Minus = %i", blockForMinus(200, 100));
    
    monday();
    sunday();
     */
    return 0;
}
