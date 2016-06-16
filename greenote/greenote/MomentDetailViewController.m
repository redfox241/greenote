//
//  MomentDetailViewController.m
//  greenote
//
//  Created by xiaojing on 16/4/25.
//  Copyright © 2016年 zhaochuanyong. All rights reserved.
//

#import "MomentDetailViewController.h"

@interface MomentDetailViewController ()

@end

@implementation MomentDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"详情";
    
    // add content to view
    UILabel *textContent = [[UILabel alloc] initWithFrame:CGRectMake(20,88,[UIScreen mainScreen].bounds.size.width - 40, 20)];
    textContent.text = @"天街小雨润入酥 草色遥看近却无 \n 最是一年好风景 绝胜烟柳满皇都";
    textContent.textColor = [UIColor blackColor];
    textContent.font = [UIFont systemFontOfSize:15];
    textContent.textAlignment = NSTextAlignmentCenter;
    
    textContent.lineBreakMode = UILineBreakModeWordWrap;
    textContent.numberOfLines = 0;
    
    [self.view addSubview:textContent];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
