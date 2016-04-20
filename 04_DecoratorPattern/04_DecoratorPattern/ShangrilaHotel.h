//
//  ShangrilaHotel.h
//  04_DecoratorPattern
//
//  Created by 모바일보안팀 on 2016. 4. 20..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import "HotelDecorator.h"
#import "Tour.h"

@interface ShangrilaHotel : HotelDecorator {
    Tour *_tour;
}
- (instancetype)initWithTour:(Tour *)tour;

@end
