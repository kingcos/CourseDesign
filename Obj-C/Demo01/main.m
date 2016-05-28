#import <Foundation/Foundation.h>
#import "Person.h"
#import "Store.h"

#pragma mark - main()
int main(int argc, const char * argv[]) {
    /*
     Person *p = [Person new];
     Bottle *b = [Bottle new];
     Water *w = [Water new];
     
     [w boil];
     
     // 把 Water 对象传递给 Person（连续传递）
     [p drinkWater:w withBottle:b];
     [p drinkWater:w withBottle:b];
     [p drinkWater:w withBottle:b];
     [p drinkWater:w withBottle:b];
     [p drinkWater:w withBottle:b];
     
     // DISPLAY:
     // 2016-04-02 15:26:40.299 Demo01[1289:91406] Oh no.
     // 2016-04-02 15:26:40.300 Demo01[1289:91406] Oh no.
     // 2016-04-02 15:26:40.300 Demo01[1289:91406] Oh no.
     // 2016-04-02 15:26:40.300 Demo01[1289:91406] Nice water!
     // 2016-04-02 15:26:40.300 Demo01[1289:91406] Nice water!
     */
    
    Bottle *b = [Store buyBottle];
    Water *w = [Store buyWater];
    
    [[Person new] drinkWater:w withBottle:b];
    // DISPLAY:
    // 2016-04-02 15:22:33.183 Demo01[1273:89026] Nice water!
    
    return 0;
}

