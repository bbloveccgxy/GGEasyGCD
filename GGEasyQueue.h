//
//  GGEasyQueue.h
//  GGEasyGCDDemo
//
//  Created by gxy on 2017/4/12.
//  This code is distributed under the terms and conditions of the MIT license.
//  Copyright © https://github.com/bbloveccgxy/ All rights reserved.//

#import <Foundation/Foundation.h>

@interface GGEasyQueue : NSObject

+ (dispatch_queue_t)main;
+ (dispatch_queue_t)global;
+ (dispatch_queue_t)customSerial;
+ (dispatch_queue_t)customConcurrent;
+ (dispatch_queue_t)customSerialWith:(const char *)identifier;
+ (dispatch_queue_t)customConcurrentWith:(const char *)identifier;


@end
