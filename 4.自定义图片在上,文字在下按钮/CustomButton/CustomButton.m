//
//  CustomButton.m
//  CustomView
//
//  Created by 思 彭 on 16/10/21.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "CustomButton.h"
#import "UIView+Frame.h"

@implementation CustomButton

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.imageView.contentMode = UIViewContentModeCenter;
        self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        self.contentHorizontalAlignment = UIControlContentVerticalAlignmentCenter;
    }
    return self;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    self.imageView.frame = CGRectMake(0, 0, self.width *2 / 3, self.height * 2 / 3);
    self.imageView.contentMode = UIViewContentModeCenter;
    self.imageView.centerX = self.width / 2.0;
    self.titleLabel.frame = CGRectMake(0, self.imageView.bottom, self.width, self.height  - self.imageView.height);
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}
@end
