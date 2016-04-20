//
//  JinAir.m
//  04_DecoratorPattern
//
//  Created by 모바일보안팀 on 2016. 4. 20..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import "JinAir.h"

@implementation JinAir


- (instancetype)init {
    self = [super init];
    
    if (self) {
        description = @"Airplane - JinAir";
    }
    
    return self;
}

- (double)cost {
    return 80;
}

@end
