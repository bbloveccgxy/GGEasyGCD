# GGEasyGCD
An easy way to use GCD
## Examples
```objectic-c
GGEasyGroup *group = [GGEasyGroup createGroupWithNotify:^(){
        NSLog(@"finished");
    }];
    
    [group asyncIn:[GGEasyQueue global] with:^(){
        NSLog(@"1");
    }];
    
    [group asyncIn:[GGEasyQueue global] with:^(){
        NSLog(@"2");
    }];
    
    [group asyncIn:[GGEasyQueue global] with:^(){
        NSLog(@"3");
    }];
    
    dispatch_queue_t queue = [GGEasyQueue customSerial];
    
    [group asyncIn:queue with:^(){
        sleep(3);
        NSLog(@"4");
    }];
    
    [group asyncIn:queue with:^(){
        NSLog(@"5");
    }];
    
    [group asyncIn:queue with:^(){
        NSLog(@"6");
    }];
    
    [group executeNotifyIn:[GGEasyQueue global]];
```
