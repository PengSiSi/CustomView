//
//  PSAlertController.m
//  PSAlertController
//
//  Created by 思 彭 on 16/9/19.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "PSAlertController.h"
#import <objc/runtime.h>

@implementation PSAlertAction

/**
 *  设置标题的字体颜色
 *
 *  @param textColor 标题字体颜色
 */
- (void)setTextColor:(UIColor *)textColor{
 
    _textColor = textColor;
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([UIAlertAction class], &count);
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivars[i];
        NSString *ivarName = [NSString stringWithCString:ivar_getName(ivar) encoding:NSUTF8StringEncoding];
        if ([ivarName isEqualToString:@"_titleTextColor"]) {
            [self setValue:textColor forKey:@"titleTextColor"];
        }
    }
}

@end

@interface PSAlertController ()

@end

@implementation PSAlertController

/**
 *  设置颜色
 *
 *  @param tineColor 设置颜色
 */
- (void)setTineColor:(UIColor *)tineColor{
    
    _tineColor = tineColor;
    // 按钮统一颜色
    if (self.tineColor) {
        for (PSAlertAction *action in self.actions) {
            if (!action.textColor) {
                action.textColor = self.tineColor;
            }
        }
   }
}

/**
 *  设置标题字体颜色
 *
 *  @param titleColor 字体颜色
 */
- (void)setTitleColor:(UIColor *)titleColor{
    
    _titleColor = titleColor;
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([UIAlertController class], &count);
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivars[i];
        NSString *ivarName = [NSString stringWithCString:ivar_getName(ivar) encoding:NSUTF8StringEncoding];
        // 标题颜色
        if ([ivarName isEqualToString:@"_attributedTitle"] &&self.title && self.titleColor) {
            NSMutableAttributedString *attributeStr = [[NSMutableAttributedString alloc]initWithString:self.title attributes:@{NSForegroundColorAttributeName: self.titleColor,NSFontAttributeName: [UIFont systemFontOfSize:14.0f]}];
            [self setValue:attributeStr forKey:@"attributedTitle"];
        }
    }
}

/**
 *  设置描述字体颜色
 *
 *  @param messageColor 描述字体颜色
 */
- (void)setMessageColor:(UIColor *)messageColor{
    
    _messageColor = messageColor;
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([UIAlertController class], &count);
    for (int i = 0; i < count; i++) {
        Ivar ivar = ivars[i];
        NSString *ivarName = [NSString stringWithCString:ivar_getName(ivar) encoding:NSUTF8StringEncoding];
    // 描述颜色
    if ([ivarName isEqualToString:@"_attributedMessage"] && self.message && self.messageColor) {
        NSMutableAttributedString *attributeStr = [[NSMutableAttributedString alloc]initWithString:self.message attributes:@{NSForegroundColorAttributeName: self.messageColor,NSFontAttributeName: [UIFont systemFontOfSize:14.0f]}];
        [self setValue:attributeStr forKey:@"attributedMessage"];
       }
    }
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
}


@end
