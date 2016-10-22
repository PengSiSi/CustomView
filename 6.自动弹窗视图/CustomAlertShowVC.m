//
//  CustomAlertShowVC.m
//  CustomView
//
//  Created by 思 彭 on 16/10/22.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "CustomAlertShowVC.h"
#import "AlertShowView.h"

@interface CustomAlertShowVC ()

@end

@implementation CustomAlertShowVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = @"自定义弹窗视图";
    AlertShowView *showView = [[AlertShowView alloc]init];
    [showView showAlertWith:@"你来啦!!思思同学...欢迎你的回来哟!!!"];
}

@end
