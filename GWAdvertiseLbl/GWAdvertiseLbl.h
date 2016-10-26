//
//  GWAdvertiseLbl.h
//  GWAdvertiseLbl
//
//  Created by 魏郭文 on 2016/10/10.
//  Copyright © 2016年 魏郭文. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum : NSUInteger {
    /**
     * 横向
     */
    GWAdvertiseLblDirectionHorizontal,
    /**
     * 纵向
     */
    GWAdvertiseLblDirectionVertical,
    
} GWAdvertiseLblDirection;

@interface GWAdvertiseLbl : UIView
@property (nonatomic,assign) GWAdvertiseLblDirection style;

- (instancetype)initWithFrame:(CGRect)frame style:(GWAdvertiseLblDirection)style dataArray:(NSArray *)dataArray bgColor:(UIColor *)bgColor textColor:(UIColor *)textColor textFont:(UIFont *)textFont;
/**
 *  停止时间器
 */
- (void)stopScorllView;
/**
 *  开始停止器
 */
- (void)startScrollView;

@end
