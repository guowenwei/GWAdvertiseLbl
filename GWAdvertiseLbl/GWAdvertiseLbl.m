//
//  GWAdvertiseLbl.m
//  GWAdvertiseLbl
//
//  Created by 魏郭文 on 2016/10/10.
//  Copyright © 2016年 魏郭文. All rights reserved.
//

#import "GWAdvertiseLbl.h"
#define kViewWidth self.frame.size.width
#define kViewHeight self.frame.size.height

@interface GWAdvertiseLbl ()

@property (nonatomic,strong) NSArray * dataArray;
/**
 *  bgColor:背景颜色. textColor:字的颜色
 */
@property (nonatomic,strong) UIColor * bgColor, * textColor;
@property (nonatomic,strong) UILabel * lable1;
/**
 *  default:12
 */
@property (nonatomic,strong) UIFont * textFont;
@property (nonatomic,strong) NSTimer * timer;
@property (nonatomic,assign) NSInteger num;
@end

@implementation GWAdvertiseLbl

/**
 *  广告lbl
 *
 *  @param frame     frame
 *  @param style     横向，纵向
 *  @param dataArray 数据
 *  @param bgColor   背景颜色
 *  @param textColor 字颜色
 *  @param textFont  字号
 *
 *  @return <#return value description#>
 */
- (instancetype)initWithFrame:(CGRect)frame style:(GWAdvertiseLblDirection)style dataArray:(NSArray *)dataArray bgColor:(UIColor *)bgColor textColor:(UIColor *)textColor textFont:(UIFont *)textFont;
{
    self = [super initWithFrame:frame];
    if (self) {
        self.dataArray = dataArray;
        self.style = style;
        if (!self.bgColor) {
            self.bgColor = bgColor;
        }else{
            self.bgColor = [UIColor whiteColor];
        }
        if (!self.textColor) {
            self.textColor = textColor;
        }else{
            self.textColor = [UIColor blackColor];
        }
        if (!self.textFont) {
            self.textFont = textFont;
        }else{
            self.textFont = [UIFont systemFontOfSize:12];
        }
        self.textFont = textFont;
        [self addViews];
    }
    return self;
}

- (void)addViews
{
    self.num = 0;
 
    self.backgroundColor = _bgColor;
    [self addSubview:self.lable1];
}

//停止定时器
- (void)stopScorllView
{
    [self.timer invalidate];
}

- (void)startScrollView
{
    [self.timer fireDate];
}

- (void)timerAction:(NSTimer *)timer
{
    if ((_num+1) > self.dataArray.count) {
        _num = 0;
    }
    self.lable1.text = self.dataArray[_num++];
}

- (UILabel *)lable1
{
    if(!_lable1) {
        _lable1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, kViewWidth, kViewHeight)];
        _lable1.text = _dataArray[0];
        _lable1.textColor = _textColor;
        _lable1.font = _textFont;
    }
    return _lable1;
}

- (NSTimer *)timer
{
    if(!_timer) {
        _timer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(timerAction:) userInfo:nil repeats:YES];
    }
    return _timer;
}

@end
