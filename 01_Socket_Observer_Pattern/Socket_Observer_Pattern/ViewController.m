//
//  ViewController.m
//  Socket_Observer_Pattern
//
//  Created by 모바일보안팀 on 2015. 12. 8..
//  Copyright © 2015년 minjoongkim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize socket;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    socket = [[Socket alloc] init:(CFStringRef)@"localhost" port:0000];
    [socket registerObserver:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)sendSocket:(id)sender {
    [socket check];
}

-(void)socketResult:(NSString*)result {
    NSLog(@"result = %@", result);
}
@end
