//
//  main.m
//  03_FactoryPattern
//
//  Created by 모바일보안팀 on 2016. 4. 18..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
/*
int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
*/
int main(int argc, char * argv[]) {
    @autoreleasepool {
        double (^multiplyTwoValues)(double, double);
        
        multiplyTwoValues = ^ (double firstValue, double secondValue) {
            return firstValue * secondValue;
        };
        
        double result = multiplyTwoValues(2,4);
        
        NSLog(@"The result is %f", result);

        
    }
    
    
    return 0;
}
