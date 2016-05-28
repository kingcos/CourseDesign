#import <Foundation/Foundation.h>
#import "NSString+Number.h"

int main(int argc, const char * argv[]) {
    /*
     已知一个字符串, 要求找出字符串中所有的阿拉伯数字
     @"a123jj46kfd5jlwf7ld";
     
     1.计数器思想, 定义一个变量保存结果
     2.遍历字符串, 取出字符串中所有的字符
     */
    NSString *s = @"12wehrgwhehf3sdjfg45jkgfu6j78";
    NSLog(@"%i", [s findNumbers]);
    return 0;
}
