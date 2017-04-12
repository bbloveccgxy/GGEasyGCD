//
//  GGEasyGCD.h
//  GGEasyGCDDemo
//
//  Created by gxy on 2017/4/11.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GGEasyQueue.h"

typedef void(^GGVoidBlock)();

@interface GGEasyGCD : NSObject



+ (void)async:(dispatch_queue_t)queue with:(GGVoidBlock)block;

+ (void)sync:(dispatch_queue_t)queue with:(GGVoidBlock)block;

/**
 Usage: static dispatch_once_t once;
 GGEasyGCD.once:once with:{
 }
 
 @param once    static dispatch_once_t
 @param block   void(^)()
 */
+ (void)once:(dispatch_once_t)once with:(GGVoidBlock)block;


@end