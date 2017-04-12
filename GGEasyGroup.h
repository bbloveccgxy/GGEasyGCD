//
//  GGEasyGroup.h
//  GGEasyGCDDemo
//
//  Created by gxy on 2017/4/12.
//  This code is distributed under the terms and conditions of the MIT license.
//  Copyright © https://github.com/bbloveccgxy/ All rights reserved.//

#import <Foundation/Foundation.h>

typedef void(^GGVoidBlock)();

@interface GGEasyGroup : NSObject

+ (GGEasyGroup*)createGroupWithNotify:(GGVoidBlock)block;

- (void)asyncIn:(dispatch_queue_t)queue with:(GGVoidBlock)block;

- (void)executeNotifyIn:(dispatch_queue_t)queue;

@end
