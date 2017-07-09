//
//  NJLaunchView.m
//  July_Eight_PaintCode
//
//  Created by TouchWorld on 2017/7/8.
//  Copyright © 2017年 cxz. All rights reserved.
//

#import "NJLaunchView.h"
@interface NJLaunchView ()
@property (strong, nonatomic) UIView *launchView;
@end
@implementation NJLaunchView
+ (instancetype)addLaunchView
{
    //1.创建启动视图
    NJLaunchView * launchView = [[NJLaunchView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    //2.将启动视图添加到窗口中
    UIWindow * mainWindow = [UIApplication sharedApplication].keyWindow;
    [mainWindow addSubview:launchView];
    //3.向启动视图添加图层
    [launchView addLayerToLaunchView];
    return launchView;
}
#pragma mark - 懒加载
- (UIView *)launchView
{
    if(_launchView == nil)
    {
        UIView * launchView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 150, 150)];
        launchView.backgroundColor = [UIColor clearColor];//透明色
        launchView.center = self.center;
        [self addSubview:launchView];
        _launchView = launchView;
    }
    return  _launchView;
}
#pragma mark - 添加启动视图
- (void)addLayerToLaunchView
{
    self.backgroundColor = [UIColor colorWithRed:0.18 green:0.70 blue:0.90 alpha:1.0];//蓝色
    //绘制图层
    CAShapeLayer * layer  = [[CAShapeLayer alloc]init];
    layer.path = [self bezierPath].CGPath;
    layer.bounds = CGPathGetBoundingBox(layer.path);
    layer.position = CGPointMake(self.launchView.bounds.size.width / 2, self.launchView.bounds.size.height/ 2);
    layer.fillColor = [UIColor whiteColor].CGColor;
    [self.launchView.layer addSublayer:layer];
    //延迟执行动画代码
    [self performSelector:@selector(startLaunch) withObject:nil afterDelay:1.0];
}
#pragma mark - 实现动画效果
- (void)startLaunch
{
    [UIView animateWithDuration:1.0 animations:^{
        //先缩小launchView
        self.launchView.transform = CGAffineTransformMakeScale(0.5, 0.5);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.0 animations:^{
            //再放大launchView
            self.launchView.transform = CGAffineTransformMakeScale(50, 50);
            self.launchView.alpha = 0;
        } completion:^(BOOL finished) {
            //移除view
            [self.launchView removeFromSuperview];
            [self removeFromSuperview];
        }];
        
    }];
}
#pragma mark - 绘制图像
- (UIBezierPath *)bezierPath
{
    //// Color Declarations
    UIColor* strokeColor = [UIColor colorWithRed: 0.592 green: 0.592 blue: 0.592 alpha: 1];
    
    //// Page-1
    {
        //// Path Drawing
        UIBezierPath* pathPath = [UIBezierPath bezierPath];
        [pathPath moveToPoint: CGPointMake(66.11, 34.26)];
        [pathPath addCurveToPoint: CGPointMake(52.9, 33.27) controlPoint1: CGPointMake(62.5, 34.26) controlPoint2: CGPointMake(58.1, 33.93)];
        [pathPath addCurveToPoint: CGPointMake(38.08, 28.67) controlPoint1: CGPointMake(47.7, 32.62) controlPoint2: CGPointMake(42.76, 31.08)];
        [pathPath addCurveToPoint: CGPointMake(23.11, 19.22) controlPoint1: CGPointMake(30.96, 24.73) controlPoint2: CGPointMake(25.97, 21.58)];
        [pathPath addCurveToPoint: CGPointMake(9.37, 5) controlPoint1: CGPointMake(20.25, 16.86) controlPoint2: CGPointMake(15.67, 12.12)];
        [pathPath addCurveToPoint: CGPointMake(6.48, 13.35) controlPoint1: CGPointMake(8.28, 7.4) controlPoint2: CGPointMake(7.32, 10.18)];
        [pathPath addCurveToPoint: CGPointMake(6.48, 24.12) controlPoint1: CGPointMake(5.65, 16.51) controlPoint2: CGPointMake(5.65, 20.1)];
        [pathPath addCurveToPoint: CGPointMake(9.37, 32.53) controlPoint1: CGPointMake(7.29, 27.85) controlPoint2: CGPointMake(8.25, 30.66)];
        [pathPath addCurveToPoint: CGPointMake(17.78, 42.45) controlPoint1: CGPointMake(10.48, 34.4) controlPoint2: CGPointMake(13.29, 37.71)];
        [pathPath addCurveToPoint: CGPointMake(11.6, 41.75) controlPoint1: CGPointMake(14.98, 42.28) controlPoint2: CGPointMake(12.91, 42.05)];
        [pathPath addCurveToPoint: CGPointMake(5.44, 39.65) controlPoint1: CGPointMake(10.29, 41.45) controlPoint2: CGPointMake(8.23, 40.75)];
        [pathPath addCurveToPoint: CGPointMake(6.48, 46.62) controlPoint1: CGPointMake(5.66, 42.72) controlPoint2: CGPointMake(6.01, 45.04)];
        [pathPath addCurveToPoint: CGPointMake(10.44, 54.66) controlPoint1: CGPointMake(6.96, 48.2) controlPoint2: CGPointMake(8.28, 50.88)];
        [pathPath addCurveToPoint: CGPointMake(17.78, 61.74) controlPoint1: CGPointMake(13.58, 58.17) controlPoint2: CGPointMake(16.03, 60.53)];
        [pathPath addCurveToPoint: CGPointMake(26.85, 65.99) controlPoint1: CGPointMake(19.54, 62.95) controlPoint2: CGPointMake(22.56, 64.37)];
        [pathPath addCurveToPoint: CGPointMake(22.15, 67.54) controlPoint1: CGPointMake(24.87, 66.95) controlPoint2: CGPointMake(23.3, 67.46)];
        [pathPath addCurveToPoint: CGPointMake(14.78, 66.73) controlPoint1: CGPointMake(20.99, 67.62) controlPoint2: CGPointMake(18.54, 67.35)];
        [pathPath addCurveToPoint: CGPointMake(18.68, 74.88) controlPoint1: CGPointMake(15.8, 70.4) controlPoint2: CGPointMake(17.1, 73.11)];
        [pathPath addCurveToPoint: CGPointMake(24.44, 80.79) controlPoint1: CGPointMake(20.26, 76.65) controlPoint2: CGPointMake(22.18, 78.62)];
        [pathPath addCurveToPoint: CGPointMake(32.2, 84.54) controlPoint1: CGPointMake(27.82, 82.65) controlPoint2: CGPointMake(30.41, 83.9)];
        [pathPath addCurveToPoint: CGPointMake(40.26, 86.48) controlPoint1: CGPointMake(34, 85.19) controlPoint2: CGPointMake(36.68, 85.83)];
        [pathPath addCurveToPoint: CGPointMake(32.2, 91.29) controlPoint1: CGPointMake(36.85, 88.69) controlPoint2: CGPointMake(34.17, 90.3)];
        [pathPath addCurveToPoint: CGPointMake(23.11, 95.2) controlPoint1: CGPointMake(30.24, 92.29) controlPoint2: CGPointMake(27.21, 93.59)];
        [pathPath addCurveToPoint: CGPointMake(11.6, 97.27) controlPoint1: CGPointMake(17.99, 96.34) controlPoint2: CGPointMake(14.16, 97.03)];
        [pathPath addCurveToPoint: CGPointMake(0.89, 97.27) controlPoint1: CGPointMake(9.05, 97.51) controlPoint2: CGPointMake(5.47, 97.51)];
        [pathPath addCurveToPoint: CGPointMake(14.78, 104.59) controlPoint1: CGPointMake(6.8, 101.17) controlPoint2: CGPointMake(11.44, 103.61)];
        [pathPath addCurveToPoint: CGPointMake(28.58, 108.61) controlPoint1: CGPointMake(16.78, 105.17) controlPoint2: CGPointMake(21.61, 107.34)];
        [pathPath addCurveToPoint: CGPointMake(45.71, 110.39) controlPoint1: CGPointMake(33.22, 109.45) controlPoint2: CGPointMake(38.93, 110.04)];
        [pathPath addCurveToPoint: CGPointMake(67.31, 106.23) controlPoint1: CGPointMake(56.15, 108.92) controlPoint2: CGPointMake(63.35, 107.53)];
        [pathPath addCurveToPoint: CGPointMake(85.05, 97.49) controlPoint1: CGPointMake(71.28, 104.93) controlPoint2: CGPointMake(77.19, 102.02)];
        [pathPath addCurveToPoint: CGPointMake(98.06, 86.48) controlPoint1: CGPointMake(91.1, 92.78) controlPoint2: CGPointMake(95.44, 89.11)];
        [pathPath addCurveToPoint: CGPointMake(107.61, 74.88) controlPoint1: CGPointMake(100.68, 83.85) controlPoint2: CGPointMake(103.87, 79.98)];
        [pathPath addCurveToPoint: CGPointMake(114.58, 60.2) controlPoint1: CGPointMake(110.95, 68.47) controlPoint2: CGPointMake(113.27, 63.57)];
        [pathPath addCurveToPoint: CGPointMake(118.93, 45.65) controlPoint1: CGPointMake(115.88, 56.83) controlPoint2: CGPointMake(117.33, 51.98)];
        [pathPath addLineToPoint: CGPointMake(120.32, 27.37)];
        [pathPath addCurveToPoint: CGPointMake(127.63, 21.07) controlPoint1: CGPointMake(123.7, 24.69) controlPoint2: CGPointMake(126.14, 22.59)];
        [pathPath addCurveToPoint: CGPointMake(134, 13.35) controlPoint1: CGPointMake(129.11, 19.54) controlPoint2: CGPointMake(131.24, 16.97)];
        [pathPath addCurveToPoint: CGPointMake(126.93, 16.13) controlPoint1: CGPointMake(131, 14.78) controlPoint2: CGPointMake(128.65, 15.71)];
        [pathPath addCurveToPoint: CGPointMake(118.93, 17.23) controlPoint1: CGPointMake(125.21, 16.55) controlPoint2: CGPointMake(122.54, 16.92)];
        [pathPath addCurveToPoint: CGPointMake(126.93, 9.99) controlPoint1: CGPointMake(123.02, 13.97) controlPoint2: CGPointMake(125.69, 11.56)];
        [pathPath addCurveToPoint: CGPointMake(130.63, 2.44) controlPoint1: CGPointMake(128.17, 8.42) controlPoint2: CGPointMake(129.4, 5.91)];
        [pathPath addCurveToPoint: CGPointMake(124.67, 5) controlPoint1: CGPointMake(128.18, 3.62) controlPoint2: CGPointMake(126.19, 4.47)];
        [pathPath addCurveToPoint: CGPointMake(113.31, 8.48) controlPoint1: CGPointMake(123.15, 5.53) controlPoint2: CGPointMake(119.36, 6.69)];
        [pathPath addCurveToPoint: CGPointMake(104.91, 3.14) controlPoint1: CGPointMake(109.87, 5.93) controlPoint2: CGPointMake(107.07, 4.15)];
        [pathPath addCurveToPoint: CGPointMake(97.1, 0.87) controlPoint1: CGPointMake(102.76, 2.13) controlPoint2: CGPointMake(100.15, 1.37)];
        [pathPath addCurveToPoint: CGPointMake(86.79, 0.87) controlPoint1: CGPointMake(92.23, 0.51) controlPoint2: CGPointMake(88.8, 0.51)];
        [pathPath addCurveToPoint: CGPointMake(78.42, 4.22) controlPoint1: CGPointMake(84.78, 1.23) controlPoint2: CGPointMake(81.99, 2.34)];
        [pathPath addCurveToPoint: CGPointMake(72.85, 8.48) controlPoint1: CGPointMake(75.63, 6.07) controlPoint2: CGPointMake(73.77, 7.49)];
        [pathPath addCurveToPoint: CGPointMake(67.31, 16.13) controlPoint1: CGPointMake(71.92, 9.47) controlPoint2: CGPointMake(70.08, 12.02)];
        [pathPath addCurveToPoint: CGPointMake(64.97, 25.53) controlPoint1: CGPointMake(65.89, 20.31) controlPoint2: CGPointMake(65.1, 23.45)];
        [pathPath addCurveToPoint: CGPointMake(66.11, 34.26) controlPoint1: CGPointMake(64.83, 27.62) controlPoint2: CGPointMake(65.21, 30.53)];
        [pathPath closePath];
        [strokeColor setStroke];
        pathPath.lineWidth = 1;
        pathPath.miterLimit = 4;
        [pathPath stroke];
        return pathPath;
    }

}
@end
