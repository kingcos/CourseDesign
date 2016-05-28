#import <Foundation/Foundation.h>
#import "Demo.h"

int main(int argc, const char * argv[]) {
    // 数组的创建
    /*
    NSArray *arr1 = [[NSArray alloc] init];
    arr1 = @[@"demo1"];
    NSArray *arr2 = [NSArray arrayWithObject: @"demo2"];
    Demo *d = [Demo new];
    NSObject *o = [NSObject new];
    NSArray *arr3 = [NSArray arrayWithObjects: o, @"test3", d, nil, @"demo3", nil];
    NSArray *arr4 = @[@"demo4", @"test4"];
    
    NSLog(@"%@", arr3);
     */
    
    // 数组常用函数
    /*
    NSLog(@"%lu", [arr3 count]);
    NSLog(@"%@", [arr1 lastObject]);
    NSLog(@"%@", [arr2 firstObject]);
    NSLog(@"%@", [arr3 objectAtIndex: 2]);
    NSLog(@"%i", [arr3 containsObject: @"test3"]);
    NSLog(@"%@", [arr4 objectAtIndex: 1]);
    */
    
    // 数组的遍历
    /*
    NSArray *arr = @[@"a", @"b", @"c", @"d", @"e", @"f"];
    
    for (int i = 0; i < arr.count; i++) {
        NSLog(@"arr[%i] = %@", i, arr[i]);
    }
    
    // 增强 for 循环
    // obj 的类型根据数组中元素的类型
//    for (NSObject *obj in arr) {
    for (NSString *obj in arr) {
        NSLog(@"arr[%lu] = %@", [arr indexOfObject:obj],obj);
    }
    
    // Obj-C 数组迭代器
    // 每取出一个元素就会调用一次 block，每次调用都会将当前取出的元素和元素对应的索引传递
    // obj 是当前取出的元素，index 是当前元素对应的索引
    // stop 控制停止遍历条件
    [arr enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if (idx == [arr count] - 1) {
            *stop = YES;
        }
        NSLog(@"obj = %@, idx = %lu", obj, idx);
    }];
     */
    
    // 给数组每项发送对象方法消息
    /*
    Demo *d1 = [Demo new];
    Demo *d2 = [Demo new];
    Demo *d3 = [Demo new];
    
    NSArray *arr = @[d1, d2, d3];
//    [arr enumerateObjectsUsingBlock:^(Demo *obj, NSUInteger idx, BOOL *stop) {
//        [obj print];
//    }];
    
    // Obj-C 可以调用数组的方法让数组中所有的元素都执行指定的方法
    // 若数组中保存的不是相同类型的数据，并且没有相同的方法，则会报错
    [arr makeObjectsPerformSelector:@selector(print)];
    [arr makeObjectsPerformSelector:@selector(printSth:) withObject:@"demo"];
     */
    
    // 数组排序
    /*
    NSArray *arr = @[@1, @4, @5, @3, @2];
    // compare 方法只支持 Foundation 框架中的对象，不能是自定义对象
    NSArray *newArr = [arr sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"%@", newArr);
    
    Demo *d1 = [Demo new];
    d1.data = 20;
    Demo *d2 = [Demo new];
    d2.data = 10;
    Demo *d3 = [Demo new];
    d3.data = 50;
    Demo *d4 = [Demo new];
    d4.data = 40;
    Demo *d5 = [Demo new];
    d5.data = 30;
    
    NSArray *arrDemo = @[d1, d2, d3, d4, d5];
    // 对自定义对象排序
    NSArray *newArrDemo = [arrDemo sortedArrayWithOptions:NSSortStable usingComparator:^NSComparisonResult(Demo *obj1, Demo *obj2) {
        // 二分排序
//        NSLog(@"obj1 = %@, obj2 = %@", obj1, obj2);
//        return NSOrderedSame;
        // 从小到大
//        return obj1.data > obj2.data;
        // 从大到小
        return obj1.data < obj2.data;
    }];
    NSLog(@"%@", newArrDemo);
    */
    
    // NSArray & NSString 转换
    /*
    NSArray *arr1 = @[@"www", @"maimieng", @"com"];
    // 将数组连接成字符串
    NSString *str1 = [arr1 componentsJoinedByString:@"."];
    NSLog(@"%@", str1);
    // 将字符串切割为数组
    NSString *str2 = @"www.maimieng.com";
    NSArray *arr2 = [str2 componentsSeparatedByString:@"."];
    NSLog(@"%@", arr2);
     */
    
    // 数组文件读写
    /*
    NSArray *arr = @[@"mai", @"mieng", @"com"];
    BOOL flag1 = [arr writeToFile:@"/Users/kingcos/Desktop/demo.plist" atomically:YES];
    // 将一个数组写入到文件中之后，本质是写入了一个 XML 文件
    // 在 iOS 开发中一般情况下将 XML 文件的扩展名保存为 plist
    NSLog(@"%i", flag1);
    
    NSArray *newArr = [NSArray arrayWithContentsOfFile:@"/Users/kingcos/Desktop/demo.plist"];
    NSLog(@"%@", newArr);
    
    Demo *d1 = [Demo new];
    d1.data = 20;
    Demo *d2 = [Demo new];
    d2.data = 10;
    Demo *d3 = [Demo new];
    d3.data = 50;
    Demo *d4 = [Demo new];
    d4.data = 40;
    Demo *d5 = [Demo new];
    d5.data = 30;
    
    NSArray *arrDemo = @[d1, d2, d3, d4, d5];
    BOOL flag2 = [arrDemo writeToFile:@"/Users/kingcos/Desktop/demo.plist" atomically:YES];
    // writeToFile: 只能写入 Foundation 框架中类创建的对象，不能写入自定义对象
    NSLog(@"%i", flag2);
     */
    
    // 可变数组
    /*
    NSMutableArray *arrM = [NSMutableArray array];
    // 添加
    [arrM addObject:@"demo"];
    // 将指定数组的元素取出放到新数组中，而不是将整个数组作为一个元素添加到新数组中
    [arrM addObjectsFromArray:@[@"demo", @"test"]];
    NSLog(@"%@", arrM);
//    [arrM addObject:@[@"demo", @"test"]];
//    NSLog(@"%@", arrM);
    
    // 插入
    [arrM insertObject:@"ins" atIndex:2];
    NSLog(@"%@", arrM);
    
    NSRange r = NSMakeRange(2, 2);
    NSIndexSet *is = [NSIndexSet indexSetWithIndexesInRange:r];
    [arrM insertObjects:@[@"ins1", @"ins2"] atIndexes:is];
    NSLog(@"%@", arrM);
    
    // 删除
    [arrM removeObject:@"demo"];
    NSLog(@"%@", arrM);
    
    [arrM removeObjectAtIndex:3];
    NSLog(@"%@", arrM);
    
    [arrM removeLastObject];
    NSLog(@"%@", arrM);
    
//    [arrM removeAllObjects];
//    NSLog(@"%@", arrM);
    
    // 替换
    [arrM replaceObjectAtIndex:1 withObject:@"ins0"];
    NSLog(@"%@", arrM);
    arrM[0] = @"insDemo";
    NSLog(@"%@", arrM);
    
    // 获取
    NSLog(@"%@", [arrM objectAtIndex:0]);
     */
    return 0;
}
