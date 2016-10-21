//
//  PSCustomPlaceHolderTextView.h
//  CustomView
//
//  Created by 思 彭 on 16/10/20.
//  Copyright © 2016年 思 彭. All rights reserved.

// 自定义带palceHolder的textView

#import <UIKit/UIKit.h>
@class PSCustomPlaceHolderTextView;

@protocol PSCustomPlaceHolderTextViewDelegate <NSObject>

/** 文本改变回调*/
- (void)customPlaceHolderTextViewTextDidChange:(PSCustomPlaceHolderTextView *)textView;
@end

@interface PSCustomPlaceHolderTextView : UITextView

@property (nonatomic, weak) id <PSCustomPlaceHolderTextViewDelegate> del;
@property (nonatomic,copy) NSString *placehoder;
@property (nonatomic,strong)UIColor *placehoderColor;
@property (nonatomic, assign) CGFloat placeholderTopMargin;
@property (nonatomic, assign) CGFloat placeholderLeftMargin;
@property (nonatomic, strong) UIFont *placeholderFont;

@end
