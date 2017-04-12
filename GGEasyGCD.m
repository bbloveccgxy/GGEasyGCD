//
//  GGEasyGCD.m
//  GGEasyGCDDemo
//
//  Created by gxy on 2017/4/11.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import "GGEasyGCD.h"

@implementation GGEasyGCD

+ (void)async:(dispatch_queue_t)queue with:(GGVoidBlock)block {
    dispatch_async(queue, block);
}

+ (void)sync:(dispatch_queue_t)queue with:(GGVoidBlock)block {
    dispatch_sync(queue, block);
}


+ (void)once:(dispatch_once_t)once with:(GGVoidBlock)block {
    dispatch_once(&once, block);
}

@end
