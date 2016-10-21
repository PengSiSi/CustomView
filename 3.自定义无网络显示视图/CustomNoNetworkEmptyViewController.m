//
//  CustomNoNetworkEmptyViewController.m
//  CustomView
//
//  Created by 思 彭 on 16/10/21.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "CustomNoNetworkEmptyViewController.h"
#import "CustomNoNetworkEmptyView.h"

@interface CustomNoNetworkEmptyViewController ()

@end

@implementation CustomNoNetworkEmptyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"无网络显示视图";
    CustomNoNetworkEmptyView *noNetworkView = [[CustomNoNetworkEmptyView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    noNetworkView.topTipImageView.image = [UIImage imageNamed:@"digupicon_review_press.gif"];
    [self.view addSubview:noNetworkView];
    // block回调
    noNetworkView.NoNetworkEmptyViewBlock = ^(CustomNoNetworkEmptyView *noNetworkView) {
        NSLog(@"重新加载网络...");
    };
}


@end
