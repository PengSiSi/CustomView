//
//  PSSegmentView.m
//  CustomView
//
//  Created by 思 彭 on 16/10/20.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "PSSegmentView.h"
#import "UIView+Layer.h"

#define kCommonBgColor [UIColor colorWithRed:0.86f green:0.85f blue:0.80f alpha:1.00f]

@implementation PSSegmentView {
    
    NSArray *_itemTitles;
    UIButton *_selectedBtn;
}

- (instancetype)initWithItemTitles:(NSArray *)itemTitles {
    
    if (self = [super init]) {
        _itemTitles = itemTitles;
        self.layerCornerRadius = 3.0;
        self.layerBorderColor = [UIColor blackColor];
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
                UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
                [self addSubview:btn];
                btn.backgroundColor = kCommonBgColor;
                [btn setTitle:objStr forState:UIControlStateNormal];
                [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
                [btn setTitleColor:[UIColor colorWithRed:0.42f green:0.33f blue:0.27f alpha:1.00f] forState:UIControlStateNormal];                btn.titleLabel.font = [UIFont systemFontOfSize:16];
                i = i + 1;
                btn.tag = i;
                [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
                btn.adjustsImageWhenDisabled = NO;
                btn.adjustsImageWhenHighlighted = NO;
            }
        }
    }
}

- (void)buttonClick: (UIButton *)btn {
    
    _selectedBtn.backgroundColor = kCommonBgColor;
    btn.backgroundColor = [UIColor colorWithRed:0.42f green:0.33f blue:0.27f alpha:1.00f];
    
    _selectedBtn.selected = NO;
    btn.selected = YES;
    _selectedBtn = btn;
    
    NSString *title = btn.currentTitle;
    if (self.block) {
        self.block(self, title, btn.tag - 1);
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
