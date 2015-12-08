//
//  ViewController.h
//  02_DelegatePattern
//
//  Created by 모바일보안팀 on 2015. 12. 8..
//  Copyright © 2015년 minjoongkim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Socket.h"
@interface ViewController : UIViewController<SocketDelegate>

@property (nonatomic, strong) Socket *socket;


-(IBAction)sendSocket:(id)sender ;


@end

