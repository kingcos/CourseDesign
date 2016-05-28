#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    // NSMutableString 基本概念
    /*
    NSString *str = @"http://maimieng.com";
    // 修改了 str 指针的指向
    str = @"maimieng.com";
    
    // 空可变字符串
    NSMutableString *mStr = [NSMutableString string];
    NSLog(@"前：%@", mStr);
    [mStr appendString:@"maimieng.com"];
    NSLog(@"后：%@", mStr);
    
    NSMutableString *strM = [[NSMutableString alloc] init];
//    strM = [[NSMutableString alloc] initWithFormat:<#(nonnull NSString *), ...#>];
//    strM = [NSMutableString stringWithFormat:<#(nonnull NSString *), ...#>];
    */
    
    // 常用方法（通常无返回值，直接修改自身）
    /*
    NSMutableString *strM = [NSMutableString stringWithFormat:@"maimieng.com"];
    NSLog(@"%@", strM);
    
    // 追加字符串
    [strM appendString:@"/"];
    NSLog(@"%@", strM);
    [strM appendFormat:@"demo = %i", 10];
    NSLog(@"%@", strM);
    
    // 删除子串
    NSRange range = [strM rangeOfString:@".com"];
    [strM deleteCharactersInRange:range];
    NSLog(@"%@", strM);
    
    // 插入字符串
    range = [strM rangeOfString:@"mai"];
    [strM insertString:@"http://" atIndex:range.location];
    NSLog(@"%@", strM);
    
    // 字符串替换（返回值：代表替换了多少个字符串）
    // 一般情况下 Obj-C 方法要求传入一个参数如果没有 *，大部分都是枚举，一般情况下如果不想使用枚举的值，可以传入 0，代表按照系统默认的方式处理
    NSUInteger count = [strM replaceOccurrencesOfString:@"/demo = 10" withString:@".com" options:0 range:NSMakeRange(0, strM.length)];
    NSLog(@"%lu", count);
    NSLog(@"%@", strM);
     */
    
    // 练习
    /*
    // 不可变
    // 在开发中如果需要对字符串进行频繁的操作，不要使用不可变的字符串
    NSString *str = @"demo";
    
    NSString *newStr = [str stringByAppendingString:@" "];
    newStr = [newStr stringByAppendingString:newStr];
    newStr = [newStr stringByAppendingString:str];
    NSLog(@"%@", newStr);
    
    // 可变
    NSMutableString *strM = [NSMutableString string];
    for (int i = 0; i < 3; i++) {
        [strM appendString:str];
        [strM appendString:@" "];
    }
    [strM deleteCharactersInRange:NSMakeRange(strM.length - 1, 1)];
    NSLog(@"%@", strM);
    */
    return 0;
}
