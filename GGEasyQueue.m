//
//  GGEasyQueue.m
//  GGEasyGCDDemo
//
//  Created by gxy on 2017/4/12.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import "GGEasyQueue.h"

@implementation GGEasyQueue

+ (dispatch_queue_t)main {
    return dispatch_get_main_queue();
}
+ (dispatch_queue_t)global {
    return dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
}
+ (dispatch_queue_t)customSerial {
    return dispatch_queue_create(nil, DISPATCH_QUEUE_SERIAL);
}
+ (dispatch_queue_t)customConcurrent {
    return dispatch_queue_create(nil, DISPATCH_QUEUE_CONCURRENT);
}
+ (dispatch_queue_t)customSerialWith:(const char *)identifier {
    return dispatch_queue_create(identifier, DISPATCH_QUEUE_SERIAL);
}
+ (dispatch_queue_t)customConcurrentWith:(const char *)identifier {
    return dispatch_queue_create(identifier, DISPATCH_QUEUE_CONCURRENT);
}


@end
