//
//  Book.h
//  03_FactoryPattern
//
//  Created by 모바일보안팀 on 2016. 4. 18..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject {
    NSString *name;
    int price;
    NSString *category;
}

-(void)setName:(NSString*)bookName;
-(NSString*)getName;
-(void)setPrice:(int)bookprice;
-(int)getPrice;
-(void)setCategory:(NSString*)bookCategory;
-(NSString*)getCategory;
-(void)bookInfo;

@end
