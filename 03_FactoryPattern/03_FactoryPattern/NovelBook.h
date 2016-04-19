//
//  NovelBook.h
//  03_FactoryPattern
//
//  Created by 모바일보안팀 on 2016. 4. 18..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
@interface NovelBook : Book
-(id)init:(NSString*)bookName price:(int)bookprice;
@end
