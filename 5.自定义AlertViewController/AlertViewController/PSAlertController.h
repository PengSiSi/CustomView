//
//  PSAlertController.h
//  PSAlertController
//
//  Created by 思 彭 on 16/9/19.
//  Copyright © 2016年 思 彭. All rights reserved.
// 自定义AlertViewController,可以改变颜色字体,runtime实现

#import <UIKit/UIKit.h>

@interface PSAlertAction : UIAlertAction

@property (nonatomic, strong) UIColor *textColor; /**< 按钮title字体颜色 */

@end

@interface PSAlertController : UIAlertController

@property (nonatomic,strong) UIColor *titleColor; /*标题颜色*/
@property (nonatomic,strong) UIColor *tineColor; /*统一按钮样式,默认为蓝色*/
@property (nonatomic,strong) UIColor *messageColor; /*信息的颜色*/

@end
