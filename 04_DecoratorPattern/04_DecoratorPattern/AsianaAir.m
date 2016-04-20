//
//  AsianaAir.m
//  04_DecoratorPattern
//
//  Created by 모바일보안팀 on 2016. 4. 20..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import "AsianaAir.h"

@implementation AsianaAir

- (instancetype)init {
    self = [super init];
    
    if (self) {
        description = @"Airplane - AsianaAir";
    }
    
    return self;
}
- (double)cost {
    return 101;
}

@end
