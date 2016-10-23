//
//  AdvertiseView.h
//  CustomView
//
//  Created by 思 彭 on 16/10/23.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdvertiseView : UIView

/**广告内容数组
 */
@property (nonatomic, copy) NSArray *adTitles;

/**头部图片 默认为nil
 */
@property (nonatomic, strong) UIImage *headImg;

/**图片位置
 */
@property (nonatomic, assign) UIEdgeInsets edgeInsets;
/**
 广告字体
 */
@property (nonatomic, strong) UIFont *labelFont;

/**广告字体颜色
 */
@property (nonatomic, strong) UIColor *color;

/**轮播时间间隔 Default is 3.5s
 */
@property (nonatomic, assign) NSTimeInterval time;


/**是否开启点击事件 Default is NO
 */
@property (nonatomic, assign) BOOL isHaveTouchEvent;


/**
 点击触发block
 */
@property (nonatomic, copy) void (^clickAdBlock)(NSUInteger index);


/**
 对齐方式
 */
@property (nonatomic, assign) NSTextAlignment textAlignment;

- (instancetype)initWithTitles:(NSArray *)titles;


/**
 开始滚动
 */
- (void)beginScroll;


/**
 关闭滚动
 */
- (void)closeScroll;

@end
