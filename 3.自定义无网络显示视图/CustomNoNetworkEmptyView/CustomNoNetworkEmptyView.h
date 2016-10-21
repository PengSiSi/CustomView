//
//  CustomNoNetworkEmptyView.h
//  CustomView
//
//  Created by 思 彭 on 16/10/21.
//  Copyright © 2016年 思 彭. All rights reserved.
// 没有网络时候显示的视图


#import <UIKit/UIKit.h>

@interface CustomNoNetworkEmptyView : UIView

@property (nonatomic, strong) UIImageView *topTipImageView;
@property (nonatomic,strong) UIButton *retryButton;

/**
 没有网络,重试block
 */
@property (nonatomic,copy) void (^NoNetworkEmptyViewBlock)(CustomNoNetworkEmptyView *view);

@end
