//
//  ShangrilaHotel.m
//  04_DecoratorPattern
//
//  Created by 모바일보안팀 on 2016. 4. 20..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import "ShangrilaHotel.h"

@implementation ShangrilaHotel

- (instancetype)initWithTour:(Tour *)tour{
    self = [super init];
    
    if (self) {
        _tour = tour;
    }
    
    return self;
}

- (NSString *)getDescription {
    return [NSString stringWithFormat:@"%@%@",_tour.getDescription,@", ShangrilaHotel"];
}

- (double)cost {
    return 50 + _tour.cost;
}

@end
