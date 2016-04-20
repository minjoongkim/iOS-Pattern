//
//  KoreanAir.m
//  04_DecoratorPattern
//
//  Created by 모바일보안팀 on 2016. 4. 20..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import "KoreanAir.h"

@implementation KoreanAir

- (instancetype)init {
    self = [super init];
    
    if (self) {
        description = @"Airplane - KoreanAir";
    }
    
    return self;
}

- (double)cost {
    return 100;
}

@end
