//
//  Socket.m
//  Socket_Observer_Pattern
//
//  Created by 모바일보안팀 on 2015. 12. 8..
//  Copyright © 2015년 minjoongkim. All rights reserved.
//

#import "Socket.h"
#import "ViewController.h"
@implementation Socket

@synthesize ip_address, port, inputStream, outputStream;


- (id)init:(CFStringRef)ip port:(int)socket_port{
    self = [super init];
    if (self) {
        _observers = [[NSMutableArray alloc]init];
        ip_address = [NSString stringWithFormat:@"%@", ip];
        port = socket_port;
        
        CFReadStreamRef readStream;
        CFWriteStreamRef writeStream;
        
        //CFStreamCreatePairWithSocketToHost(NULL, (CFStringRef)@"172.16.0.114", 8989, &readStream, &writeStream);
        CFStreamCreatePairWithSocketToHost(NULL, (CFStringRef)ip, 8989, &readStream, &writeStream);
        
        //inputStream = (NSInputStream *)readStream;
        //outputStream = (NSOutputStream *)writeStream;
        inputStream = objc_unretainedObject(readStream);
        outputStream = objc_unretainedObject(writeStream);
        [inputStream setDelegate:self];
        [outputStream setDelegate:self];
        [inputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
        [outputStream scheduleInRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
        [inputStream open];
        [outputStream open];
        
    }
    return self;
}

-(void)check {
    NSString *response  = [NSString stringWithFormat:@"HOSTNAME:AGENTVER:0.2"];
    NSData *data = [[NSData alloc] initWithData:[response dataUsingEncoding:NSASCIIStringEncoding]];
    [outputStream write:[data bytes] maxLength:[data length]];
}

- (void)registerObserver:(id)ob {
    [_observers addObject:ob];
}

- (void)removeObserver:(id)ob {
    [_observers removeObject:ob];
}
- (void)notifyObservsers:(NSString*)str {
    for (id observer in _observers) {
        /*
        ViewController *signSettingView = (ViewController*)observer;
        if ([signSettingView respondsToSelector:@selector(socketResult:)]) {
            [signSettingView socketResult:str];
        }
        */
        if([observer respondsToSelector:@selector(socketResult:)]) {
            [observer socketResult:str];
        }
    }
}

- (void)stream:(NSStream *)theStream handleEvent:(NSStreamEvent)streamEvent {
    
    //NSLog(@"stream event %d", (int)streamEvent);
    
    switch (streamEvent) {
            
        case NSStreamEventOpenCompleted:
            //NSLog(@"Stream opened");
            break;
        case NSStreamEventHasBytesAvailable:
            
            if (theStream == inputStream) {
                
                uint8_t buffer[1024];
                int len;
                
                while ([inputStream hasBytesAvailable]) {
                    len = (int)[inputStream read:buffer maxLength:sizeof(buffer)];
                    if (len > 0) {
                        
                        NSString *output = [[NSString alloc] initWithBytes:buffer length:len encoding:NSASCIIStringEncoding];
                        if (nil != output) {
                            [self notifyObservsers:output];
                            //NSLog(@"server said: %@", output);
                            
                        }
                    }
                }
            }
            break;
            
            
        case NSStreamEventErrorOccurred:
            [self notifyObservsers:@"NO"];
            
            //NSLog(@"Can not connect to the host!");
            break;
            
        case NSStreamEventEndEncountered:
            
            [theStream close];
            [theStream removeFromRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
            //[theStream release];
            theStream = nil;
            
            break;
        default:
            break;
            //NSLog(@"Unknown event");
    }
    
}

@end
