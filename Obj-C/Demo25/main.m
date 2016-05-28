#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    // 文件读取
    /*
    //1. 通过字符串常量创建（常量区）
    //   如果是通过字符串常量创建对象，并且字符串常量的内容一致，那么如果创建多个字符串对象，多个对象指向同一块存储空间
    NSString *str1 = @"String Demo 1";
    NSString *str11 = @"String Demo 1";
    NSLog(@"%p %p", str1, str11);
    
    //2. 通过 alloc init 创建（堆）
    //   只要调用 alloc 就会在堆内存中开辟一块存储空间
    NSString *str2 = [[NSString alloc]initWithFormat:@"Demo2"];
    NSString *str22 = [[NSString alloc]initWithFormat:@"Demo2"];
    NSLog(@"%p %p %i", str2, str22, [str2 isEqualToString:str22]);
    
    NSString *str3 = [[NSString alloc]initWithFormat:@"String Demo 3"];
    NSString *str33 = [[NSString alloc]initWithFormat:@"String Demo 3"];
    NSLog(@"%p %p %i", str3, str33, [str3 isEqualToString:str33]);
    
    //3. 通过类工厂方法创建／stringWithFormat（堆）
    //   同2，内部封装了 alloc init
    NSString *str4 = [NSString stringWithFormat:@"String Demo 4"];
    NSString *str44 = [NSString stringWithFormat:@"String Demo 4"];
    NSLog(@"%p %p", str4, str44);

    NSString *str5 = [[NSString alloc] initWithString:@"String Demo 5"];
    NSString *str55 = [[NSString alloc] initWithString:@"String Demo 5"];
    NSLog(@"%p %p", str5, str55);
     */
    /*
    //从文件读取字符串
    // file: 文件路径
    // encoding: 编码 英文： ISO-5988-1 中文： GBK GBK2312
    // 一般情况填写 UTF-8
    // error: 如果读取错误，会将错误信息保存到 error 中，如果读取正确，error = nil
    // 注意：在 Obj-C 方法中只要看到 XXXofFile 的方法，传递的一定是全路径（绝对路径）
    NSString *path = @"/Users/kingcos/GitHub/iOS-Day-by-Day/Obj-C基础/1.md";
    NSError *error = nil;
    NSString *str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:&error];
    if (error == nil) {
        NSLog(@"%@", str);
    } else {
        // 查看错误关键信息
        NSLog(@"%@", [error localizedDescription]);
    }
     */
    /*
    // 写入字符串
    NSString *str = @"Hello, world!";
    NSString *path = @"/Users/kingcos/Desktop/Demo.md";
    // atomically: 传入真，写入文件若未写完，不会生成文件；若传入非，写入文件若未写完，会生成文件
    BOOL flag = [str writeToFile:path atomically:YES encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%i", flag);
     */
    /*
    // 1. 创建 URL
    //    协议头 + 主机地址 + 文件路径
//    NSString *path = @"file://localhost/Users/kingcos/Desktop/Demo.md";
//    NSString *path = @"file:///Users/kingcos/Desktop/Demo.md";
    // 如果加载的资源是本机上的资源，那么 URL 中的主机地址可以省略，但是文件路径中最前面的 / 不能省略，它代表根路径
    
//    NSURL *url = [NSURL URLWithString:path];
    // 如果通过 fileURLWithPath: 方法创建 URL，系统会自动添加协议头（file://）
    NSString *path = @"/Users/kingcos/Desktop/Demo.md";
    NSURL *url = [NSURL fileURLWithPath:path];
    NSLog(@"%@", url);
    */
    /*
    // URL 中文问题
    // URLWithString: 不支持中文，需要协议头
//    NSString *path = @"file:///Users/kingcos/Desktop/测试.md";
//    NSURL *url = [NSURL URLWithString:path];
    // fileURLWithPath: 支持中文，不需要协议头
//    NSString *path = @"/Users/kingcos/Desktop/测试.md";
//    NSURL *url = [NSURL fileURLWithPath:path];
//    NSLog(@"%@", url);
    
    NSString *path = @"file:///Users/kingcos/Desktop/测试.md";
    NSLog(@"处理前：%@", path);
    // 百分号编码
    path = [path stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"处理后：%@", path);
    
    NSURL *url = [NSURL URLWithString:path];
    NSLog(@"url = %@", url);
    */
    /*
    // 2. 根据 URL 加载文件中的字符串
    NSString *str = [NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@", str);
     */
    
    // 文件写入
    /*
    NSString *str = @"Hello, world!sdfga";
//    NSString *path = @"file:///Users/kingcos/Desktop/Demo.md";
//    NSString *path = @"file:///Users/kingcos/Desktop/测试.md";
//    path = [path stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
//    NSURL *url = [NSURL URLWithString:path];
    
    NSString *path = @"/Users/kingcos/Desktop/测试.md";
    NSURL *url = [NSURL fileURLWithPath:path];
    
    [str writeToFile:url atomically:YES encoding:NSUTF8StringEncoding error:nil];
    */
    
    // 比较字符串
    /*
    NSString *str1 = @"abc";
    NSString *str2 = @"ABC";
//    NSString *str2 = @"abc";
    
    
    // 比较变量指向的内存存储的字符串"内容"
    BOOL flag = [str1 isEqualToString:str2];
    NSLog(@"%i", flag);
    
    // 比较变量指向内存存储字符串的"地址"
    NSLog(@"%i", str1 == str2);
    
    
    // 比较字符串的大小（依次按 ASCII 码比较）
    
    // NSOrderedAscending 前面的小于后面的
    // NSOrderedSame 相等
    // NSOrderedDescending 前面的大于后面的
//    switch ([str1 compare:str2]) {
//        case NSOrderedAscending:
//            NSLog(@"str1 < str2");
//            break;
//        case NSOrderedSame:
//            NSLog(@"str1 = str2");
//            break;
//        case NSOrderedDescending:
//            NSLog(@"str1 > str2");
//    }
    
    // 忽略大小写比较
    switch ([str1 caseInsensitiveCompare:str2]) {
        case NSOrderedAscending:
            NSLog(@"str1 < str2");
            break;
        case NSOrderedSame:
            NSLog(@"str1 = str2");
            break;
        case NSOrderedDescending:
            NSLog(@"str1 > str2");
    }
    */
    
    // 字符串搜索
    /*
    NSString *str = @"http://maimieng.com";
    
    // 判断前缀：从字符串的第一个字符开始匹配，只要不匹配就返回 NO
    NSLog(@"%i", [str hasPrefix:@"http://"]);
    
    // 判断后缀：从字符串最后一个字符开始匹配，只要不匹配就返回 NO
    NSLog(@"%i", [str hasSuffix:@".com"]);
    
    NSRange range = [str rangeOfString:@"maimieng.com"];
    // 若包含该字符串，会返回该字符串在 str 中的起始位置以及长度
    // 若不包含，返回 length = 0, location = NSNotFound
    // location 从 0 开始，length 从 1 开始
    if (range.location != NSNotFound) {
        NSLog(@"loc = %lu, len = %lu", range.location, range.length);
    } else {
        NSLog(@"Not Found");
    }
    */
    
    // 字符串截取
    /*
    NSString *str = @"<title>Apple 派</title>";
    // NSRange: 位置／长度
//    NSRange range = {7, 7};
//    range.location = range.length = 7;
    // Obj-C 提供的结构体，一般可使用 NSMakeXXX 来创建
//    NSRange range = NSMakeRange(7, 7);
//    NSString *newStr = [str substringWithRange:range];
//    NSLog(@"%@", str);
//    NSLog(@"%@", newStr);
    
    // 动态获取
    NSUInteger loc = [str rangeOfString:@">"].location + 1;
    // rangeOfString 是从左到右查找
    NSLog(@"%lu", [@"abcda" rangeOfString:@"a"].location);
    
//    NSUInteger len = [str rangeOfString:@"<／"].location - loc;
    NSUInteger len = [str rangeOfString:@"<"
                                options:NSBackwardsSearch].location - loc;
                                // 从右向左
    NSLog(@"loc = %lu, len = %lu", loc, len);
    NSRange range = NSMakeRange(loc, len);
    NSLog(@"%@", [str substringWithRange:range]);
    
    // 从 index 开始截取，一直截取到最后
    NSLog(@"%@", [str substringFromIndex:7]);
    // 从开头截取，一直截取 index
    NSLog(@"%@", [str substringToIndex:7]);
    
    NSLog(@"str = %@", str);
    NSUInteger newLoc = [str rangeOfString:@">"].location + 1;
    NSString *newStr = [str substringFromIndex:newLoc];
    newLoc = [newStr rangeOfString:@"<"].location;
    // 改变了指针的指向，并不是修改了原来的字符串
    newStr = [newStr substringToIndex:newLoc];
    NSLog(@"%@", newStr);
    
    NSLog(@"str = %@", str);
    */
    
    // 字符串替换
    /*
    NSString *str = @"http:@@maimieng.com";
    
    // OccurrencesOfString: 被替换者 withString: 替换者
    NSString *newStr = [str stringByReplacingOccurrencesOfString:@"@" withString:@"/"];
    NSLog(@"%@", newStr);
    
    str = @"htt  p:@ @m a  im  ieng.  co  m";
    newStr = [str stringByReplacingOccurrencesOfString:@" " withString:@""];
    newStr = [newStr stringByReplacingOccurrencesOfString:@"@" withString:@"/"];
    NSLog(@"%@", newStr);
    
    // 替换首尾
    str = @"    HELLOhttp://maimieng.comWORLD    ";
    NSCharacterSet *set = [NSCharacterSet whitespaceCharacterSet];
    newStr = [str stringByTrimmingCharactersInSet: set];
    NSLog(@"%@", newStr);
    
    set = [NSCharacterSet uppercaseLetterCharacterSet];
    newStr = [newStr stringByTrimmingCharactersInSet: set];
    NSLog(@"%@", newStr);
     */
    
    // 字符串与路径
    /*
    // 绝对路径判断
    NSString *str = @"/User/kingcos/Desktop/Demo.md";
    if ([str isAbsolutePath]) {
        NSLog(@"Absolute Path");
    } else {
        NSLog(@"Not Absolute Path");
    }
    
    // 获取文件路径中的最后一层，即获取路径中最后一个 / 后面的内容
    NSString *newStr = [str lastPathComponent];
    NSLog(@"%@", newStr);
    
    // 删除文件路径中的最后一层，即删除最后一个 / 后面的内容（包括 /）
    newStr = [str stringByDeletingLastPathComponent];
    NSLog(@"%@", newStr);
    
    // 给文件路径添加一个目录，即在字符串的末尾保留一个 / 和指定的内容
    newStr = [newStr stringByAppendingPathComponent:@"///测试.md"];
    NSLog(@"%@", newStr);
    
    // 获取路径中文件的扩展名，即从字符串的末尾开始查找 .，截取首个 . 后的内容
    newStr = [str pathExtension];
    NSLog(@"%@", newStr);
    
    // 删除路径中文件的扩展名，即从字符串的末尾开始查找. ,删除首个 . 和后面的内容
    newStr = [str stringByDeletingPathExtension];
    NSLog(@"%@", newStr);
    
    // 给文件路径添加一个扩展名，即在字符串的末尾加上一个 . 和指定的内容
    newStr = [str stringByAppendingPathExtension:@"txt"];
    NSLog(@"%@", newStr);
    */
    
    // 字符串转换
    /*
    NSString *str = @"http://maimieng.com";
    // 将字符串转换为大写
    NSString *newStr = [str uppercaseString];
    NSLog(@"%@", newStr);
    
    // 将字符串转换为小写
    newStr = [newStr lowercaseString];
    NSLog(@"%@", newStr);
    
    // 将字符串的首字符转换为大写
    newStr = [newStr capitalizedString];
    NSLog(@"%@", newStr);
    
    // 字符串与基本数据类型的转换
    // 如果不是 int, double, float, bool, integer, long long 就不要乱用
    NSString *str1 = @"110";
    NSString *str2 = @"114";
    NSLog(@"%i", [str2 intValue] - [str1 intValue]);
    
    // C 语言字符串和 Obj-C 字符串之间的转换
    char *c = "kingcos";
    newStr = [NSString stringWithUTF8String:c];
    NSLog(@"%@", newStr);
    
    const char *ch = [newStr UTF8String];
    printf("ch = %s\n", ch);
    */
    return 0;
}
