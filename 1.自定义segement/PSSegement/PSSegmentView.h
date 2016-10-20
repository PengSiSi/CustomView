//
//  PSSegmentView.h
//  CustomView
//
//  Created by 思 彭 on 16/10/20.
//  Copyright © 2016年 思 彭. All rights reserved.
// 类似于系统的UISegmentControl

#import <UIKit/UIKit.h>
@class PSSegmentView;

/**
 点击segement按钮的Block回调

 @param segement     当前视图
 @param currentTitle 当前选中的按钮标题
 @param currentIndex 当前选中的按钮index 默认从0开始
 */
typedef void(^PSSegementBtnClickHandle)(PSSegmentView *segement, NSString *currentTitle, NSInteger currentIndex);

@interface PSSegmentView : UIView

@property (nonatomic,copy) PSSegementBtnClickHandle block;

- (instancetype)initWithItemTitles: (NSArray *)itemTitles;
- (void)clickDefault;

@end
