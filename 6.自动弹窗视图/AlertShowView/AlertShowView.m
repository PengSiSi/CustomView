//
//  AlertShowView.m
//  CustomView
//
//  Created by 思 彭 on 16/10/22.
//  Copyright © 2016年 思 彭. All rights reserved.
//

#import "AlertShowView.h"
#import "AppDelegate.h"

//整个view的展示宽度
#define AlertViewWidth [UIScreen mainScreen].bounds.size.width - 120

@implementation AlertShowView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        //初始化
        self.textFont           =   [UIFont systemFontOfSize:14.0f];
        self.fadeWidth          =   AlertViewWidth;
        self.fadeBGColor        =   [UIColor colorWithRed:35.0/255.0f green:35.0/255.0f blue:35.0/255.0f alpha:1.0f];
        self.titleColor         =   [UIColor colorWithRed:190.0/255.0f green:190.0/255.0f blue:190.0/255.0f alpha:1.0f];
        self.textOffWidth       =   18;
        self.textOffHeight      =   28;
        self.textBottomHeight   =   736*0.5f;
        self.fadeTime           =   1.5;
        self.FadeBGAlpha        =   0.8;
    }
    return self;
}

- (void)showAlertWith:(NSString *)str {
    
    self.alpha = 0;
    NSDictionary *attribute = @{NSFontAttributeName: self.textFont};
    CGRect rect = [str boundingRectWithSize:CGSizeMake(AlertViewWidth, FLT_MAX) options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil];
    CGFloat width  = rect.size.width  + self.textOffWidth;
    CGFloat height = rect.size.height + self.textOffHeight;
    
    
    self.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width- width)/2, [UIScreen mainScreen].bounds.size.height - height - self.textBottomHeight, width, height);
    self.backgroundColor = self.fadeBGColor;
    
    //圆角
    self.layer.masksToBounds = YES;
    //一行大圆角，超过一行小圆角
    if (rect.size.height > 21) {
        
        self.layer.cornerRadius = 10/2;
    }else
    {
        self.layer.cornerRadius = height/2;
    }

    // 显示的Label
    UILabel *tmpLabel = [[UILabel alloc] init];
    tmpLabel.text = str;
    tmpLabel.numberOfLines = 0;
    tmpLabel.backgroundColor = [UIColor clearColor];
    tmpLabel.textColor = self.titleColor;
    tmpLabel.textAlignment = NSTextAlignmentCenter;
    tmpLabel.font = self.textFont;
    tmpLabel.frame = CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height);
    [self addSubview:tmpLabel];
    
    [((AppDelegate *)[[UIApplication sharedApplication] delegate]).window addSubview:self];
    
    // 开启动画
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:.3f];
    self.alpha = self.FadeBGAlpha;
    [UIView commitAnimations];
    
    // 延迟消失
    [self performSelector:@selector(fadeAway) withObject:nil afterDelay:self.fadeTime];
}

// 渐变动画消失
- (void)fadeAway {
  
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3f];
    self.alpha = 0;
    [UIView commitAnimations];
    // 动画完成移除视图消失
    [self performSelector:@selector(removeView) withObject:nil afterDelay:0.3f];
}

- (void)removeView {
   
    [self removeFromSuperview];
}

@end
