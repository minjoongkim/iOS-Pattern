//
//  BookFactory.m
//  03_FactoryPattern
//
//  Created by 모바일보안팀 on 2016. 4. 18..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import "BookFactory.h"
#import "NovelBook.h"
#import "ComicBook.h"

@implementation BookFactory

+(Book*)makeBook:(NSString*)bookType name:(NSString*)bookName price:(int)bookPrice{
    if([bookType isEqualToString:@"Comic"]) {
        return [[ComicBook alloc] init:bookName price:bookPrice];
    }else if([bookType isEqualToString:@"Novel"]) {
        return [[NovelBook alloc] init:bookName price:bookPrice];
    }else {
        return nil;
    }
}

@end
