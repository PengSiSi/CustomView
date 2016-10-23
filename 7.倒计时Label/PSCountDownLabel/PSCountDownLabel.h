//
//  PSCountDownLabel.h
//  CustomView
//
//  Created by 思 彭 on 16/10/23.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 倒计时的类型
 
 - kCountDirectionUp:   增加计时
 - kCountDirectionDown: 减计时
 */
typedef NS_ENUM(NSInteger, kCountDirection) {
    
    kCountDirectionUp = 0,
    kCountDirectionDown
};


/**
 计时Label代理
 */
@protocol PSCountDownLabelDelegate <NSObject>

@optional;
// 计时结束完成
- (void)countdownDidEnd;

// 已经开始计时
- (void)countdownDidStarted:(NSNumber *)value;

@end


@interface PSCountDownLabel : UILabel

/**
 计时Label类型
 */
@property (nonatomic, assign) NSInteger countDirection;

/**
 显示字体
 */
@property (nonatomic, strong) UIFont *boldFont;

@property (nonatomic, strong) UIFont *regularFont;

/**
 是否正在计时
 */
@property (nonatomic, assign) BOOL isRunning;

/**
 计时开始值
 */
@property (nonatomic, assign) NSInteger startValue;

/**
 计时当前值
 */
@property (nonatomic, assign) NSInteger currentValue;


/**
 代理
 */


@property (nonatomic, assign) id<PSCountDownLabelDelegate> delegate;


/**
 开始计时
 */
- (void)start;

/**
 停止计时
 */
- (void)stop;

/**
 重置计时
 */
- (void)reset;

/**
 更新出现
 */
- (void)updateApperance;

@end
