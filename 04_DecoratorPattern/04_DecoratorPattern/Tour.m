//
//  Tour.m
//  04_DecoratorPattern
//
//  Created by 모바일보안팀 on 2016. 4. 20..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import "Tour.h"

@implementation Tour

- (instancetype)init {
    self = [super init];
    
    if (self) {
        description = @"Unkown Tour";
    }
    
    return self;
}

- (NSString *)getDescription {
    return description;
}

- (double)cost {
    NSAssert(NO, @"This is an abstract method so should be overridden.");
    return 0;
}

@end
