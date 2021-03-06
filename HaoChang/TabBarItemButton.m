//
//  TabBarItemButton.m
//  HaoChang
//
//  Created by apple on 16/5/15.
//  Copyright © 2016年 zhulei. All rights reserved.
//

#import "TabBarItemButton.h"

@interface TabBarItemButton ()
@property (nonatomic, strong) CALayer *bottomLine;
@end

@implementation TabBarItemButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self addBottomLineLayer];
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    [self addBottomLineLayer];
    return self;
}

- (void)addBottomLineLayer
{
    _bottomLine = [CALayer layer];
    self.bottomLine.backgroundColor = [UIColor redColor].CGColor;
    self.bottomLine.frame = CGRectMake(0, CGRectGetHeight(self.bounds) - 2, CGRectGetWidth(self.bounds), 2);
    [self.layer addSublayer:self.bottomLine];
    [self.bottomLine setHidden:YES];
}

- (void)setHighlighted:(BOOL)highlighted
{
    if (highlighted) {
        [self setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    }
}

- (void)setSelected:(BOOL)selected
{
    if (selected) {
        [self setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [self.bottomLine setHidden:NO];
    } else {
        [self setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
        [self.bottomLine setHidden:YES];
    }
}
@end
