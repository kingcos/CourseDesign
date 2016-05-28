#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    // NSDictionary
    /*
    NSDictionary *dict1 = [NSDictionary dictionaryWithObject:@"maimieng.com" forKey:@"domain"];
    NSString *domain = [dict1 objectForKey:@"domain"];
    NSLog(@"%@", domain);
    // key 和 value 是一一对应
    NSDictionary *dict2 = [NSDictionary dictionaryWithObjects:@[@"http", @"maimieng.com"] forKeys:@[@"protocol", @"domain"]];
    NSLog(@"%@ %@", [dict2 objectForKey:@"protocol"], [dict2 objectForKey:@"domain"]);
    
    NSDictionary *dict3 = @{@"domain": @"maimieng.com", @"demo": @"test"};
    NSLog(@"%@ %@", dict3[@"domain"], dict3[@"demo"]);
    NSLog(@"%lu", [dict3 count]);
    // 字典遍历
    // 字典和数组不同，字典中保存的数据是无序的（类似 Java 的 Map）
//    NSArray *arr1 = [dict3 allKeys];
//    for (int i = 0; i < dict3.count; i++) {
//        NSLog(@"%@ - %@", arr1[i], dict3[arr1[i]]);
//    }
    // 通过 for in 遍历字典，会将所有的 key 赋值给前面的 obj
//    for (NSObject *obj in dict3) {
//        NSLog(@"%@ - %@", obj, dict3[obj]);
//    }
    // 字典迭代器
    [dict3 enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"%@ - %@", key, obj);
    }];
    
    // 字典读写
    [dict3 writeToFile:@"/Users/kingcos/Desktop/demo.plist" atomically:YES];
    NSDictionary *newDict = [NSDictionary dictionaryWithContentsOfFile:@"/Users/kingcos/Desktop/demo.plist"];
    NSLog(@"%@", newDict);
    */
    
    // NSMutableDictionary
    /*
    NSMutableDictionary *dictM = [NSMutableDictionary dictionary];
    NSLog(@"%@", dictM);
    // 添加
    [dictM setObject:@"demo" forKey:@"test"];
    NSLog(@"%@", dictM);
    [dictM setValuesForKeysWithDictionary:@{@"domain": @"maimieng.com", @"demo": @"test"}];
    NSLog(@"%@", dictM);
    // 删除
    [dictM removeObjectForKey:@"domain"];
    NSLog(@"%@", dictM);
    [dictM removeObjectsForKeys:@[@"test"]];
    NSLog(@"%@", dictM);
    // 修改
    [dictM setObject:@"demo" forKey:@"demo"];
    NSLog(@"%@", dictM);
    
    NSDictionary *dictDemo = @{@"domain": @"maimieng", @"domain": @"v2m"};
    NSLog(@"%@", dictDemo);
    
    NSMutableDictionary *dictTest = [NSMutableDictionary dictionaryWithObjects:@[@"maimieng", @"v2m"] forKeys:@[@"domain", @"domain"]];
    NSLog(@"%@", dictTest);
    */
    
    // Obj-C 常用结构体
    /*
    // 访问结构体成员使用点语法
    // 坐标
    // NSPoint == CGPoint
    CGPoint p = NSMakePoint(10, 20);
    
    // 尺寸
    // NSSize == CGSize
    CGSize s = NSMakeSize(20, 20);
    
    // 坐标与尺寸
    // NSRect == CGRect
    CGRect r = NSMakeRect(10, 20, 20, 20);
    */
    
    // NSNumber
    /*
    int a = 10;
    double b = 3.14;
    // 将基本数据类型转换为对象类型
    NSNumber *n1 = [NSNumber numberWithInt:a];
    NSNumber *n2 = [NSNumber numberWithDouble:b];
    NSArray *arr = @[n1, n2];
    NSLog(@"%@", arr);
    
    // 基本数据类型转换对象类型简写
    // 如果传入的是变量那么必须在 @ 后面写上 ()，如果传入的常量，() 可省略
    NSNumber *n3 = @(a);
    NSNumber *n4 = @10.24;
    NSLog(@"%@ %@", n3, n4);
    
    // 将对象类型转换为基本数据类型
    int c = [n1 intValue];
    double d = [n2 doubleValue];
    NSLog(@"%i %f", c, d);
    */
    
    // NSValue
    /*
    // 利用 NSValue 包装常用的结构体
    CGPoint p = NSMakePoint(10, 20);
    NSValue *v1 = [NSValue valueWithPoint:p];
    NSArray *arr1 = @[v1];
    NSLog(@"%@", arr1);
    
    // 用 NSValue 包装自定义的结构体
    typedef struct {
        int age;
        double height;
    } Person;
    Person p1 = {20, 1.80};
    // valueWithBytes: 接收一个指针，需要传递要包装的结构体的变量地址
    // objCType: 需要传递需要包装的数据类型
    NSValue *v2 = [NSValue valueWithBytes:&p1 objCType:@encode(Person)];
    Person p2;
    [v2 getValue:&p2];
    NSLog(@"%i %f", p2.age, p2.height);
    */
    
    // NSDate
    /*
    // date 方法创建的时间对象，默认保存了当前格林威治时间
    NSDate *now = [NSDate date];
    // 设为系统时区
    NSTimeZone *tz = [NSTimeZone systemTimeZone];
    // 求当前时间距离 now 的秒数
    NSInteger sec = [tz secondsFromGMTForDate:now];
    // 在 now 基础上追加 sec 秒
    NSDate *new = [now dateByAddingTimeInterval:sec];
    NSLog(@"%@", new);
    
    // 时间格式化为字符串
    NSDateFormatter *formatter1 = [[NSDateFormatter alloc] init];
    // yyyy 年 MM 月 dd 日 HH 24 小时  hh 12 小时 mm 分钟 ss 秒钟 Z 时区
    formatter1.dateFormat = @"yy 年 MM 月 dd 日";
    // 利用 NSDateFormatter 对象对时间进行格式化
    NSString *str1 = [formatter1 stringFromDate:now];
    NSLog(@"%@", str1);
    
    // 字符串格式化为时间
    NSString *str2 = @"2011-11-11 11:11:11 +0000";
    NSDateFormatter *formatter2 = [[NSDateFormatter alloc] init];
    formatter2.dateFormat = @"yyyy-MM-dd HH:mm:ss Z";
    NSDate *date = [formatter2 dateFromString:str2];
    NSLog(@"%@", date);
     */
     
    // NSCalendar
    /*
    NSDate *now = [NSDate date];
    NSCalendar *cal1 = [NSCalendar currentCalendar];
    // 利用日历类从当前时间对象中获取 年月日时分秒（单独获取出来）
    // 一般情况下如果一个方法接收一个参数, 这个参数是是一个枚举 , 那么可以通过|符号, 连接多个枚举值
    NSCalendarUnit type = NSCalendarUnitYear   |
                          NSCalendarUnitMonth  |
                          NSCalendarUnitDay    |
                          NSCalendarUnitHour   |
                          NSCalendarUnitMinute |
                          NSCalendarUnitSecond;
    // components: 需要获取的类型
    NSDateComponents *cmp1 = [cal1 components:NSCalendarUnitYear fromDate:now];
    NSLog(@"%ld", cmp1.year);
    
    NSDateComponents *cmp2 = [cal1 components:type fromDate:now];
    NSLog(@"%ld", cmp2.year);
    NSLog(@"%ld", cmp2.month);
    NSLog(@"%ld", cmp2.day);
    
    NSString *str = @"2016-04-16 12:00:00 +0000";
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd HH:mm:ss Z";
    NSDate *date = [formatter dateFromString:str];
    NSLog(@"date = %@", date);
    NSLog(@"now = %@", now);
    
    NSCalendar *cal2 = [NSCalendar currentCalendar];
    NSDateComponents *cmp3 = [cal2 components:type fromDate:now toDate:date options:0];
    NSLog(@"%ld 年 %ld 月 %ld 日 %ld 小时 %ld 分钟 %ld 秒钟", cmp3.year, cmp3.month, cmp3.day, cmp3.hour, cmp3.minute, cmp3.second);
    */
    
    // NSFileManager
    /*
    // defaultManager 产生的 NSFileManager 对象是单例对象
//    NSFileManager *fm1 = [NSFileManager defaultManager];
//    NSFileManager *fm2 = [NSFileManager defaultManager];
//    NSLog(@"%p %p", fm1, fm2);
    
    NSFileManager *fm = [NSFileManager defaultManager];
    // 判断一个文件或者文件夹是否存在
    BOOL flag1 = [fm fileExistsAtPath:@"/Users/kingcos/Desktop/demo"];
    BOOL flag2 = [fm fileExistsAtPath:@"/Users/kingcos/Desktop/demo.plist"];
    NSLog(@"%i %i", flag1, flag2);
    
    // 判断一个文件是否存在，并且判断它是否是一个文件夹
    BOOL flag3 = NO;
    // 返回传入路径对应的文件或文件夹是否存在，第二个参数是保存判断是否为路径的结果
    BOOL flag4 = [fm fileExistsAtPath:@"/Users/kingcos/Desktop/demo.plist" isDirectory:&flag3];
    NSLog(@"%i %i", flag3, flag4);
    
    // 获取文件或文件夹的属性
    NSDictionary *info = [fm attributesOfItemAtPath:@"/Users/kingcos/Desktop/demo.plist" error:nil];
    NSLog(@"%@", info);
    
    // 获取文件夹中所有的文件（不包括子文件夹）
    NSArray *arr1 = [fm contentsOfDirectoryAtPath:@"/Users/kingcos" error:nil];
    NSLog(@"%@", arr1);
    
    // 获取文件夹中所有的文件（包括子文件夹）
    NSArray *arr2 = [fm subpathsAtPath:@"/Users/kingcos/Desktop"];
    NSLog(@"%@", arr2);
    
    NSArray *arr3 = [fm subpathsOfDirectoryAtPath:@"/Users/kingcos/Desktop" error:nil];
    NSLog(@"arr3 = %@", arr3);
    
    // 创建文件夹
    // createDirectoryAtPath: 创建文件夹位置
    // withIntermediateDirectories: 如果指定的文件中有一些文件夹不存在，是否自动创建不存在的文件夹
    // attributes: 指定创建出来的文件夹的属性
    // error: 是否创建成功，如果失败会给传入的参数赋值
    // 只能用于创建文件夹, 不能用于创建文件
    BOOL flag5 = [fm createDirectoryAtPath:@"/Users/kingcos/Desktop/Demo" withIntermediateDirectories:YES attributes:nil error:nil];
    NSLog(@"%i", flag5);
    
    // 创建文件
    NSString *str = @"demo 测试";
    // NSData: 二进制数据
    NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
    // createFileAtPath: 指定文件创建出来的位置
    // contents: 文件中的内容
    // attributes: 创建出来的文件的属性
    // 只能用于创建文件，不能用于创建文件夹
    BOOL flag6 = [fm createFileAtPath:@"/Users/kingcos/Desktop/Demo/Demo.md" contents:data attributes:nil];
    NSLog(@"%i", flag6);
    */
    return 0;
}
