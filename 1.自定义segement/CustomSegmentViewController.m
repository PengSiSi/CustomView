//
//  CustomSegmentViewController.m
//  CustomView
//
//  Created by 思 彭 on 16/10/20.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "CustomSegmentViewController.h"
#import "PSSegmentView.h"

@interface CustomSegmentViewController ()

@end

@implementation CustomSegmentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"自定义segement";
    PSSegmentView *segement = [[PSSegmentView alloc]initWithItemTitles:@[@"热门",@"我的"]];
    segement.frame = CGRectMake(50, 100, 150, 44);
    [segement clickDefault];
    [self.view addSubview:segement];
    segement.block = ^(PSSegmentView *segement, NSString *currentTitle, NSInteger currentIndex) {
        
        NSLog(@"点击了%@",currentTitle);
    };
}

@end
