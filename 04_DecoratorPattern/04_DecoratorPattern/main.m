//
//  main.m
//  04_DecoratorPattern
//
//  Created by 모바일보안팀 on 2016. 4. 20..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

#import "Tour.h"

#import "KoreanAir.h"
#import "AsianaAir.h"
#import "JinAir.h"

#import "HotelDecorator.h"

#import "HennanRagoonHotel.h"
#import "ShangrilaHotel.h"
#import "ThelindHotel.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        //return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        
        //진에어를 타고가서, 헤난라군2박, 샹글릴라 1박했을 경우 입니다.
        Tour *tour1 = [JinAir new];
        tour1 = [[HennanRagoonHotel alloc] initWithTour:tour1];
        tour1 = [[HennanRagoonHotel alloc] initWithTour:tour1];
        tour1 = [[ShangrilaHotel alloc] initWithTour:tour1];
        
        NSLog(@"%@ $%0.2f",tour1.getDescription,tour1.cost);
        
        //진에어를 타고가서, 더린드 1박, 샹그릴라 2박 했을 경우 입니다.
        Tour *tour2 = [JinAir new];
        tour2 = [[ThelindHotel alloc] initWithTour:tour2];
        tour2 = [[ShangrilaHotel alloc] initWithTour:tour2];
        tour2 = [[ShangrilaHotel alloc] initWithTour:tour2];
        
        NSLog(@"%@ $%0.2f",tour2.getDescription,tour2.cost);
        
        //대한항공을 타고가서, 샹그릴라3박 했을 경우입니다.
        Tour *tour3 = [KoreanAir new];
        tour3 = [[ShangrilaHotel alloc] initWithTour:tour3];
        tour3 = [[ShangrilaHotel alloc] initWithTour:tour3];
        tour3 = [[ShangrilaHotel alloc] initWithTour:tour3];
        
        NSLog(@"%@ $%0.2f",tour3.getDescription,tour3.cost);
    }
    return 0;
}

