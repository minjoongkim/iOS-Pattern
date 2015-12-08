//
//  ViewController.h
//  Socket_Observer_Pattern
//
//  Created by 모바일보안팀 on 2015. 12. 8..
//  Copyright © 2015년 minjoongkim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Socket.h"
@interface ViewController : UIViewController


@property (nonatomic, strong) Socket *socket;

-(void)socketResult:(NSString*)result;
-(IBAction)sendSocket:(id)sender ;
@end

