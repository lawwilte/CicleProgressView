//
//  ViewController.m
//  LTCicleProgressView
//
//  Created by user on 2016/3/3.
//  Copyright © 2016年 rencai. All rights reserved.
//

#import "ViewController.h"
#import "LTCicleProgressView.h"
#import "LTLoadingView.h"
#import "LTGradientLoadingView.h"
#import "LTCiclePieProgressView.h"

@interface ViewController ()

@property (strong, nonatomic) LTCicleProgressView *progressView;
@property (strong, nonatomic) LTLoadingView *loadingView;
@property (strong, nonatomic) LTGradientLoadingView *gradientView;
@property (strong, nonatomic) LTCiclePieProgressView *pieProgressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.progressView = [[LTCicleProgressView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    // 背景色
    self.progressView.trackBackgroundColor = [UIColor yellowColor];
    // 进度颜色
    self.progressView.trackColor = [UIColor greenColor];
    self.progressView.headerImage = [self drawImage];
    // 开始角度位置
    //    self.progressView.beginAngle =
    // 自定义progressLabel的属性...
    self.progressView.progressLabel.textColor = [UIColor lightGrayColor];
    //    self.progressView.progressLabel.hidden = YES;
    [self.view addSubview:self.progressView];
    
    // 饼状
    self.pieProgressView = [[LTCiclePieProgressView alloc] initWithFrame: CGRectMake(100, 220, 100, 100)];
    [self.view addSubview:self.pieProgressView];
    
    // 加载动画
    self.loadingView = [[LTLoadingView alloc] initWithFrame: CGRectMake(100, 340, 100, 100)];
    [self.view addSubview:self.loadingView];
    
    
    NSArray *colors = @[
                        [UIColor redColor],
                        [UIColor yellowColor],
                        [UIColor greenColor],
                        [UIColor purpleColor],
                        ];
    // 渐变
    self.gradientView = [[LTGradientLoadingView alloc] initWithFrame:CGRectMake(100, 500, 100, 100)];
    self.gradientView.colors = colors;
    [self.view addSubview:self.gradientView];

}

- (UIImage *)drawImage {
    UIGraphicsBeginImageContext(CGSizeMake(20, 20));
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    CGContextAddArc(currentContext, 10, 10, 10, 0, 2*M_PI, 0);
    [[UIColor blueColor] set];
    CGContextFillPath(currentContext);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)slide:(id)sender {
    UISlider *slider = (UISlider *)sender;
    // 改变进度
    self.progressView.progress = slider.value;
    self.pieProgressView.progress = slider.value;
    
}


@end
