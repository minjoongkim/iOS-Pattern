//
//  SocketDelegate.h
//  02_DelegatePattern
//
//  Created by 모바일보안팀 on 2015. 12. 8..
//  Copyright © 2015년 minjoongkim. All rights reserved.
//

@protocol SocketDelegate<NSObject>;

@required

-(void) resultSocketMessage:(NSString *)msg;

@end