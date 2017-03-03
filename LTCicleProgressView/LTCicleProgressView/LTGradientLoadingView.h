//
//  LTGradientLoadingView.h
//  LTCicleProgressView
//
//  Created by user on 2016/3/3.
//  Copyright © 2016年 rencai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LTGradientLoadingView : UIView

/** 颜色数组 */
@property (strong, nonatomic) NSArray<UIColor *> *colors;
/** 进度条宽度 默认为10 */
@property (assign, nonatomic) CGFloat lineWidth;
/** 中间空白部分的颜色 默认为 whiteColor */
@property (strong, nonatomic) UIColor *centerColor;
/** 动画时间 默认为1s*/
@property (assign, nonatomic) CGFloat animateDuration;

@end
