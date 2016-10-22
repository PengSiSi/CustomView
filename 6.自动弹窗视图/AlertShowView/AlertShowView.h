//
//  AlertShowView.h
//  CustomView
//
//  Created by 思 彭 on 16/10/22.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlertShowView : UIView

/**
 *  弹窗显示的文字
 */
@property (copy) NSString *showText;

/**
 *  弹窗字体大小
 */
@property(retain) UIFont *textFont;

/**
 *  整个FadeView的宽度
 */
@property(assign) CGFloat fadeWidth;

/**
 *  整个FadeView的背景色
 */
@property(retain) UIColor *fadeBGColor;

/**
 *  提示语颜色
 */
@property(retain) UIColor *titleColor;

/**
 *  宽度边框
 */
@property(assign) CGFloat textOffWidth;

/**
 *  高度边框
 */
@property(assign) CGFloat textOffHeight;

/**
 *  距离屏幕下方高度
 */
@property(assign) CGFloat textBottomHeight;

/**
 *  自动消失时间
 */
@property (assign) CGFloat fadeTime;

/**
 *  背景的透明度
 */
@property(assign) CGFloat FadeBGAlpha;


/**
 *  显示弹窗
 *
 *  @param str 弹窗文字
 *
 *  @return
 */
- (void)showAlertWith:(NSString *)str;


@end
