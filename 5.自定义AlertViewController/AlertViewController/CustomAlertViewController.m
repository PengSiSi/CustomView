//
//  CustomAlertViewController.m
//  CustomView
//
//  Created by 思 彭 on 16/10/21.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "CustomAlertViewController.h"
#import "PSAlertController.h"

@interface CustomAlertViewController ()

@end

@implementation CustomAlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"自定义AlertViewController";
    UILabel *weekLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 200, 50)];
    weekLabel.backgroundColor = [UIColor redColor];
    weekLabel.textAlignment = NSTextAlignmentCenter;
    weekLabel.text = @"点击屏幕弹出哟!!!!!";
    [self.view addSubview:weekLabel];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    PSAlertController *alertVc = [PSAlertController alertControllerWithTitle:@"你确定要退出么?" message:@"退出就是退出了哟!!" preferredStyle:UIAlertControllerStyleActionSheet];
    alertVc.messageColor = [UIColor greenColor];
    alertVc.titleColor = [UIColor redColor];
    alertVc.tineColor = [UIColor lightGrayColor];
    // 取消按钮
    PSAlertAction *cancle = [PSAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    // 单独设置取消的颜色
    cancle.textColor = [UIColor purpleColor];
    [alertVc addAction:cancle];
    
    PSAlertAction *exit = [PSAlertAction actionWithTitle:@"退出" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    exit.textColor = [UIColor orangeColor];
    [alertVc addAction:exit];
    [self presentViewController:alertVc animated:YES completion:nil];
}

@end
