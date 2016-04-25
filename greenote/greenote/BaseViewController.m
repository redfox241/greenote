//
//  BaseViewController.m
//  greenote
//
//  Created by xiaojing on 16/4/25.
//  Copyright © 2016年 zhaochuanyong. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置自定义背景颜色
    UIColor *gray = [ UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1];
    self.view.backgroundColor = gray;
    
    //设置自定义导航栏
    self.navigationController.navigationBar.barTintColor = [[UIColor alloc] initWithRed:0.2 green:0.72 blue:0.46 alpha:1];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setSingleLineTitle:(NSString *)title{
    
    //初始化lable
    UILabel *titleLable = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 40)];
    titleLable.text = title;
    titleLable.textColor = [UIColor whiteColor];
    titleLable.font = [UIFont boldSystemFontOfSize:20];
    titleLable.textAlignment = NSTextAlignmentCenter;
    titleLable.backgroundColor = [UIColor clearColor];
    
    //add title to view
    self.navigationItem.titleView = titleLable;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
