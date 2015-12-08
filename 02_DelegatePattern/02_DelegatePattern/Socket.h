//
//  Socket.h
//  02_DelegatePattern
//
//  Created by 모바일보안팀 on 2015. 12. 8..
//  Copyright © 2015년 minjoongkim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SocketDelegate.h"

@interface Socket : NSObject <NSStreamDelegate>{
    id<SocketDelegate> delegate;
@private
    NSMutableArray *_observers;
}
@property (nonatomic, strong) id<SocketDelegate> delegate;


@property (nonatomic, retain) NSString *ip_address;
@property (nonatomic) int port;
@property (nonatomic, retain) NSInputStream *inputStream;
@property (nonatomic, retain) NSOutputStream *outputStream;

- (id)init:(CFStringRef)ip port:(int)socket_port;
- (void)check;

- (void)registerObserver:(id)ob;
- (void)removeObserver:(id)ob;




@end
