//
//  HotelDecorator.m
//  04_DecoratorPattern
//
//  Created by 모바일보안팀 on 2016. 4. 20..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import "HotelDecorator.h"

@implementation HotelDecorator

- (NSString *)getDescription {
    NSAssert(NO, @"This is an abstract method so should be overridden.");
    return nil;
}

@end
