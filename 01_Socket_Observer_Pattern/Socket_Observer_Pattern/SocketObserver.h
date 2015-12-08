//
//  SocketObserver.h
//  Socket_Observer_Pattern
//
//  Created by 모바일보안팀 on 2015. 12. 8..
//  Copyright © 2015년 minjoongkim. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SocketObserver <NSObject>

- (void) registerObserver:(id)ob;
- (void) removeObserver:(id)ob;
- (void) notifyObservsers:(NSString*)str;

@end
