//
//  CustomCountDownVC.m
//  CustomView
//
//  Created by 思 彭 on 16/10/23.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "CustomCountDownVC.h"
#import "PSCountDownLabel.h"

@interface CustomCountDownVC ()<PSCountDownLabelDelegate>

@end

@implementation CustomCountDownVC

- (void)viewDidLoad {
    [super viewDidLoad];

    PSCountDownLabel *countLabel = [[PSCountDownLabel alloc]initWithFrame:CGRectMake(20, 100, 200, 44)];
    countLabel.delegate = self;
    countLabel.startValue = 200;
    countLabel.currentValue = 100;
    [self.view addSubview:countLabel];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        // 开启计时  问题是为啥在这里打断点就可以倒计时,否则不会倒计时
        [countLabel start];
    });
}

// 计时结束完成
- (void)countdownDidEnd {
    
    NSLog(@"计时结束完成");
}

// 已经开始计时
- (void)countdownDidStarted:(NSNumber *)value {
    
    NSLog(@"已经开始计时");
}

@end
