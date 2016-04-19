//
//  NovelBook.m
//  03_FactoryPattern
//
//  Created by 모바일보안팀 on 2016. 4. 18..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import "NovelBook.h"

@implementation NovelBook

-(id)init:(NSString*)bookName price:(int)bookprice {
    self = [super init];
    if (self) {
        [self setName:bookName];
        [self setPrice:bookprice];
        [self setCategory:@"Novel"];
    }
    return self;
}

@end
