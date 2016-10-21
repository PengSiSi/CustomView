//
//  CustomButtonViewController.m
//  CustomView
//
//  Created by 思 彭 on 16/10/21.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "CustomButtonViewController.h"
#import "CustomButton.h"

@interface CustomButtonViewController ()

@end

@implementation CustomButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"图片在上,文字在下按钮";
    
    CustomButton *button = [[CustomButton alloc]init];
    button.frame = CGRectMake(100, 100, 50, 70);
    [button setImage:[UIImage imageNamed:@"digdownicon_review_press.gif"] forState:UIControlStateNormal];
    [button setTitle:@"思思" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClick {
    
    NSLog(@"按钮被点击了...");
}

@end
