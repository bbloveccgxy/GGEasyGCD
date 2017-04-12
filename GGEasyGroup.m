//
//  GGEasyGroup.m
//  GGEasyGCDDemo
//
//  Created by gxy on 2017/4/12.
//  Copyright © 2017年 GaoXinYuan. All rights reserved.
//

#import "GGEasyGroup.h"

@interface GGEasyGroup () {
    dispatch_group_t group;
}

@property (copy, nonatomic) GGVoidBlock notifyBlock;


@end

@implementation GGEasyGroup

- (instancetype)init
{
    self = [super init];
    if (self) {
        group = dispatch_group_create();
    }
    return self;
}

+ (GGEasyGroup *)createGroupWithNotify:(GGVoidBlock)block {
    GGEasyGroup *group = [[GGEasyGroup alloc] init];
    if (block != nil) {
        group.notifyBlock = block;
    }
    return group;
}

- (void)asyncIn:(dispatch_queue_t)queue with:(GGVoidBlock)block {
    dispatch_group_async(group, queue, block);
}

- (void)executeNotifyIn:(dispatch_queue_t)queue{
    if (self.notifyBlock != nil) {
        dispatch_group_notify(group, queue, self.notifyBlock);
    }
}

@end
