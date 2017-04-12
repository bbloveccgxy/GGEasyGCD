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

## License

This code is distributed under the terms and conditions of the MIT license.

```
Copyright (C) 2017 https://github.com/bbloveccgxy/

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```

---
