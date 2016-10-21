//
//  CustomTextViewViewController.m
//  CustomView
//
//  Created by 思 彭 on 16/10/20.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "CustomTextViewViewController.h"
#import "PSCustomPlaceHolderTextView.h"
#import "textViewPlaceHolder.h"

@interface CustomTextViewViewController ()<PSCustomPlaceHolderTextViewDelegate>

@end

@implementation CustomTextViewViewController

/**
 不知道为什么单独创建textView会位置错位,在有其他组件的时候就不会出现错位的情况?????两种封装都一样......
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"自定义TextView";
    
    /*
    PSCustomPlaceHolderTextView *textView = [[PSCustomPlaceHolderTextView alloc]init];
    [self.view addSubview:textView];
    textView.frame = CGRectMake(15, 100, self.view.frame.size.width - 15 * 2, 130);
    textView.placehoder = @"写下你的举报...";
    textView.placeholderFont = [UIFont systemFontOfSize:15];
    textView.del = self;
    textView.backgroundColor = [UIColor grayColor];
    textView.layer.cornerRadius = 3;
    textView.layer.borderColor = [UIColor grayColor].CGColor;
    textView.layer.borderWidth = 1;
    textView.placeholderTopMargin = 0;
     */
    
    textViewPlaceHolder *textView = [[textViewPlaceHolder alloc]init];
    textView.frame = CGRectMake(10, 100, self.view.frame.size.width, 100);
    textView.placeHolderText = @"填写内容......";
    textView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self.view addSubview:textView];
}

- (void)customPlaceHolderTextViewTextDidChange:(PSCustomPlaceHolderTextView *)textView {
    
    NSLog(@"值改变了......");
}

@end
