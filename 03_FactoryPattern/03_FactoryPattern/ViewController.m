//
//  ViewController.m
//  03_FactoryPattern
//
//  Created by 모바일보안팀 on 2016. 4. 18..
//  Copyright © 2016년 minjoongkim. All rights reserved.
//

#import "ViewController.h"

#import "Book.h"
#import "ComicBook.h"
#import "NovelBook.h"
#import "BookFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //non use factorypattern.
    Book *book;
    NSString *bookCategory = @"Comic";
    if([bookCategory isEqualToString:@"Comic"]) {
        book = [[ComicBook alloc]init:@"SlamDunk" price:5000];
    }else if([bookCategory isEqualToString:@"Novel"]) {
        book = [[NovelBook alloc]init:@"HarryPotter" price:13000];
    }
    
    [book bookInfo];
    
    //use factorypattern.
    Book *bookUseFactoryComic = [BookFactory makeBook:@"Comic" name:@"SlamDunk" price:5000];
    [bookUseFactoryComic bookInfo];
    
    Book *bookUseFactoryNovel = [BookFactory makeBook:@"Novel" name:@"HarryPotter2" price:13000];
    [bookUseFactoryNovel bookInfo];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
