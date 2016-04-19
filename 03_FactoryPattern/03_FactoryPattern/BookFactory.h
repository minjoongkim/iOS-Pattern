//
//  BookFactory.h
//  03_FactoryPattern
//
//  Created by 모바일보안팀 on 2016. 4. 18..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface BookFactory : NSObject
+(Book*)makeBook:(NSString*)bookType name:(NSString*)bookName price:(int)bookPrice;
@end
