//
//  ViewController.m
//  MMMMMMMMMMMMMMM
//
//  Created by Mac on 16/3/9.
//  Copyright © 2016年 孟羽. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *navBGView = [[UIView alloc] initWithFrame:CGRectZero];
    navBGView.backgroundColor = [UIColor yellowColor];
    //如果你要自己写代码做适配 当视图需要使用自定义约束条件自动布局的时候
    //需要关闭该视图的自动改变大小的功能
    navBGView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:navBGView];
    
   NSArray *arr =  [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[navBGView]-0-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(navBGView)];
    //表示水平约束  如果你写H: 表示默认  是水平
    //  竖杠 -》|  表示superView
    //“-”(减号)-10表示间距为10   如果是0  可以用-表示
    //H:|-100-[navBGView-100-|   等于  |-[navBGView-|
    //H:|-100-[navBGView   表示只约束了左边
  NSArray *arr1 =   [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[navBGView(==64)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(navBGView)];
    //
    [self.view addConstraints:arr];
    [self.view addConstraints:arr1];
    
    
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectZero];
    leftView.backgroundColor = [UIColor greenColor];
    leftView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:leftView];
    NSArray *arr3 =  [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[leftView(==80)]-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(leftView)];
    NSArray *arr4 =   [NSLayoutConstraint constraintsWithVisualFormat:@"V:[navBGView]-10-[leftView(==40)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(navBGView,leftView)];
    [self.view addConstraints:arr3];
    [self.view addConstraints:arr4];
    
    UIView *but = [[UIView alloc] initWithFrame:CGRectZero];
    but.backgroundColor = [UIColor orangeColor];
    but.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:but];
    NSArray *arr5 =  [NSLayoutConstraint constraintsWithVisualFormat:@"H:[but(==80)]-30-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(but)];
    NSArray *arr6 =   [NSLayoutConstraint constraintsWithVisualFormat:@"V:[but(==80)]-30-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(but)];
    [self.view addConstraints:arr5];
    [self.view addConstraints:arr6];
    
    UIButton *bu1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    bu1.frame = CGRectZero;
    bu1.backgroundColor = [UIColor blueColor];
    bu1.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:bu1];
    NSArray *arr7 =  [NSLayoutConstraint constraintsWithVisualFormat:@"H:[bu1(==40)]-30-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(bu1)];
    NSArray *arr8 =   [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[bu1(==40)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(bu1)];
    [self.view addConstraints:arr7];
    [self.view addConstraints:arr8];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
