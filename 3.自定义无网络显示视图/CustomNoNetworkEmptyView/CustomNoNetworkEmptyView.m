//
//  CustomNoNetworkEmptyView.m
//  CustomView
//
//  Created by 思 彭 on 16/10/21.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "CustomNoNetworkEmptyView.h"
#import "UIView+Frame.h"

/***  当前屏幕宽度 */
#define kScreenWidth  [[UIScreen mainScreen] bounds].size.width
/***  当前屏幕高度 */
#define kScreenHeight  [[UIScreen mainScreen] bounds].size.height

@interface CustomNoNetworkEmptyView ()

@end

@implementation CustomNoNetworkEmptyView


#pragma mark - 懒加载

//- (instancetype)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        
//    }
//    return self;
//}

- (UIImageView *)topTipImageView {
    
    if (!_topTipImageView) {
        _topTipImageView = [[UIImageView alloc]init];
        [self addSubview:_topTipImageView];
        _topTipImageView.layer.masksToBounds = YES;
        _topTipImageView.layer.cornerRadius = 5;
    }
    return _topTipImageView;
}

- (UIButton *)retryButton {
    
    if (!_retryButton) {
        _retryButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:_retryButton];
        [_retryButton setTitle:@"点击马上重试" forState:UIControlStateNormal];
        _retryButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_retryButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [_retryButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        _retryButton.adjustsImageWhenDisabled = NO;
        _retryButton.adjustsImageWhenHighlighted = NO;
    }
    return _retryButton;
}

- (void)buttonClick: (UIButton *)button {
    
    if (self.NoNetworkEmptyViewBlock) {
        self.NoNetworkEmptyViewBlock(self);
    }
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    self.topTipImageView.frame = CGRectMake((kScreenWidth - 150) / 2.0, 150, 150, 150);
    self.retryButton.frame = CGRectMake((kScreenWidth - 100) / 2.0, self.topTipImageView.bottom + 15, 100, 25);
}

@end
