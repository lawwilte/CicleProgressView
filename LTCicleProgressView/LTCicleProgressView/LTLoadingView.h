//
//  LTLoadingView.h
//  LTCicleProgressView
//
//  Created by user on 2016/3/3.
//  Copyright © 2016年 rencai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LTLoadingView : UIView

/** 开始的角度 默认为 -90°*/
@property (assign, nonatomic) CGFloat beginAngle;
/** 进度条的宽度 默认为10 */
@property (assign, nonatomic) CGFloat lineWidth;
/** 进度条的背景颜色 默认为 clearColor */
@property (strong, nonatomic) UIColor *trackBackgroundColor;
/** 进度条的颜色 默认为 redColor */
@property (strong, nonatomic) UIColor *trackColor;
/** 进度条两端的样式 默认为kCALineCapRound*/
@property (assign, nonatomic) NSString *lineCap;
/** 动画时间 默认为2s*/
@property (assign, nonatomic) CGFloat animateDuration;
/**
 *  停止动画
 */
- (void)stopAnimations;
/**
 *  重新开始动画
 */
- (void)startAnimations;


@end
