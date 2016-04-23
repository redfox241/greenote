//
//  ViewController.m
//  myFristApp
//
//  Created by xiaojing on 16/4/6.
//  Copyright © 2016年 zhaochuanyong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIColor *gray = [ UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1];
    self.view.backgroundColor = gray;
    
    //设置导航栏
    self.navigationController.navigationBar.barTintColor = [[UIColor alloc] initWithRed:0.2 green:0.72 blue:0.46 alpha:1];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    //初始化lable
    UILabel *titleLable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 40)];
    titleLable.text = @"2016年4月";
    titleLable.textColor = [UIColor whiteColor];
    titleLable.font = [UIFont boldSystemFontOfSize:20];
    titleLable.textAlignment = NSTextAlignmentCenter;
    titleLable.backgroundColor = [UIColor clearColor];
    self.navigationItem.titleView = titleLable;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
