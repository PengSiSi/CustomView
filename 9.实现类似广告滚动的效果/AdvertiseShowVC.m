//
//  AdvertiseShowVC.m
//  CustomView
//
//  Created by 思 彭 on 16/10/23.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "AdvertiseShowVC.h"
#import "AdvertiseView.h"

@interface AdvertiseShowVC ()

@end

@implementation AdvertiseShowVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AdvertiseView *advertiseView = [[AdvertiseView alloc]initWithTitles:@[@"Copyright © 2016年 思 彭. All rights reserved.",@"哈哈哈哈哈哈",@"hjcdvvdvdv"]];
    advertiseView.backgroundColor = [UIColor greenColor];
    advertiseView.frame = CGRectMake(20, 100, 300, 44);
    [self.view addSubview:advertiseView];
    advertiseView.color = [UIColor blackColor];
    [advertiseView beginScroll];

}


@end
