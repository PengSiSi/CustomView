//
//  CustomProgressViewVC.m
//  CustomView
//
//  Created by 思 彭 on 16/10/23.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "CustomProgressViewVC.h"
#import "PSProgressView.h"

@interface CustomProgressViewVC ()

@end

@implementation CustomProgressViewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    PSProgressView *progress = [[PSProgressView alloc]initWithFrame:CGRectMake(20, 100, 200, 44)];
    progress.progress = 33;
    [self.view addSubview:progress];
//    UIProgressView *progressView = [[UIProgressView alloc]initWithFrame:CGRectMake(20, 100, 100, 44)];
//    progressView.progress = 3;
//    progressView.progressTintColor = [UIColor orangeColor];
//    [self.view addSubview:progressView];
}

@end
