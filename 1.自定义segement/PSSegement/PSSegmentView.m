//
//  PSSegmentView.m
//  CustomView
//
//  Created by 思 彭 on 16/10/20.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "PSSegmentView.h"
#import "UIView+Layer.h"

#define kCommonTintColor [UIColor colorWithRed:0.42f green:0.33f blue:0.27f alpha:1.00f] 

@implementation PSSegmentView {
    
    NSArray *_itemTitles;
    UIButton *_selectedBtn;
}

- (instancetype)initWithItemTitles:(NSArray *)itemTitles {
    
    if (self = [super init]) {
        _itemTitles = itemTitles;
        self.layerCornerRadius = 3.0;
        self.layerBorderColor = kCommonTintColor;
        self.layerBorderWidth = 1.0;
        [self setUpViews];
    }
    return self;
}

- (void)clickDefault {
    
    if (_itemTitles.count == 0) {
        return;
    }
    [self buttonClick:(UIButton *)[self viewWithTag:1]];
}

- (void)setUpViews {
    
    if (_itemTitles.count > 0) {
        NSInteger i = 0;
        for (id obj in _itemTitles) {
            if ([obj isKindOfClass:[NSString class]]) {
                NSString *objStr = (NSString *)obj;
                // 创建button
                UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
                [self addSubview:btn];
                btn.backgroundColor = kCommonTintColor;
                [btn setTitle:objStr forState:UIControlStateNormal];
                [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
                [btn setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
                btn.titleLabel.font = [UIFont systemFontOfSize:16];
                i = i + 1;
                btn.tag = i;
                [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
                btn.adjustsImageWhenDisabled = NO;
                btn.adjustsImageWhenHighlighted = NO;
            }
        }
    }
}

- (void)buttonClick: (UIButton *)button {
    
    _selectedBtn.backgroundColor = kCommonTintColor;
    button.backgroundColor = [UIColor colorWithRed:0.42f green:0.33f blue:0.27f alpha:1.00f];
    _selectedBtn.selected = NO;
    button.selected = YES;
    _selectedBtn = button;
    NSString *title = button.currentTitle;
    if (self.block) {
        self.block(self, title, button.tag - 1);
    }
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    if (_itemTitles.count > 0) {
        CGFloat btnW = self.frame.size.width / _itemTitles.count;
        for (int i = 0 ; i < _itemTitles.count; i++) {
            UIButton *btn = (UIButton *)[self viewWithTag:i + 1];
            btn.frame = CGRectMake(btnW * i, 0, btnW, self.frame.size.height);
        }
    }
}

@end
