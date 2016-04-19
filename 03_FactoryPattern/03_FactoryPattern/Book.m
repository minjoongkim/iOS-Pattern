//
//  Book.m
//  03_FactoryPattern
//
//  Created by 모바일보안팀 on 2016. 4. 18..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import "Book.h"

@implementation Book

-(void)setName:(NSString*)bookName {
    name = bookName;
}
-(NSString*)getName {
    return name;
}
-(void)setPrice:(int)bookprice {
    price = bookprice;
}
-(int)getPrice {
    return price;
}

-(void)setCategory:(NSString*)bookCategory {
    category = bookCategory;
}
-(NSString*)getCategory {
    return category;
}

-(void)bookInfo {
    NSLog(@"%@ : %@ book price is %d", category, name, price);
}

@end
