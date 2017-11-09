//
//  ViewController.m
//  UIView动画基础
//
//  Created by zh dk on 2017/9/1.
//  Copyright © 2017年 zh dk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(150, 130, 80, 110);
    imageView.image = [UIImage imageNamed:@"7.jpg"];
    [self.view addSubview:imageView];
    
    
    UIButton *btnMove = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnMove.frame = CGRectMake(160, 360, 80, 40);
    [btnMove setTitle:@"移动" forState:UIControlStateNormal];
    [btnMove addTarget:self action:@selector(pressBtnMove) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnMove];
    
    UIButton *btnScale = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnScale.frame = CGRectMake(160, 400, 80, 40);
    [btnScale setTitle:@"缩放" forState:UIControlStateNormal];
    [btnScale addTarget:self action:@selector(pressBtnScale) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnScale];
}

-(void)pressBtnMove
{
    //准备动画的开始工作
    [UIView beginAnimations:nil context:nil];
    //设置动画时间函数
    [UIView setAnimationDuration:2];
    
    //设置动画开始的时间长度
    //进行延时动画处理
    [UIView setAnimationDelay:0];
    //设置动画代理对象
    [UIView setAnimationDelegate:self];
    //设置动画结束调用函数
    [UIView setAnimationDidStopSelector:@selector(stopAnim)];
    //设置动画运动轨迹的方式
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    
    imageView.frame = CGRectMake(300, 130, 80, 110);
    //提交运行动画
    [UIView commitAnimations];
}

-(void) stopAnim{
    NSLog(@"动画结束");
    imageView.frame = CGRectMake(150, 130, 80, 110);
    imageView.alpha = 1;
}

-(void)pressBtnScale
{
    //准备动画的开始工作
    [UIView beginAnimations:nil context:nil];
    //设置动画时间函数
    [UIView setAnimationDuration:2];
    
    //设置动画开始的时间长度
    //进行延时动画处理
    [UIView setAnimationDelay:0];
    //设置动画代理对象
    [UIView setAnimationDelegate:self];
    //设置动画结束调用函数
    [UIView setAnimationDidStopSelector:@selector(stopAnim)];
    //设置动画运动轨迹的方式
    [UIView setAnimationCurve:UIViewAnimationCurveEaseIn];
    
    imageView.frame = CGRectMake(150, 130, 120 , 150);
    imageView.alpha = 0.3;
    //提交运行动画
    [UIView commitAnimations];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
