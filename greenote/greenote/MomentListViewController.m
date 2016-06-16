//
//  MomentListViewController.m
//  greenote
//
//  Created by xiaojing on 16/4/25.
//  Copyright © 2016年 zhaochuanyong. All rights reserved.
//

#import "MomentListViewController.h"
#import "MomentDetailViewController.h"

@interface MomentListViewController ()

@end

@implementation MomentListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //自定义title
    [self setSingleLineTitle:@"笔记"];
    
    //添加tableview
    UITableView *tableView = [ [ UITableView alloc ] initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 64) ] ;
    tableView.separatorStyle = UITableViewCellSelectionStyleNone;

    [self.view addSubview:tableView];
    tableView.dataSource = self;
    tableView.delegate = self;
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) tableView:(nonnull UITableView*) tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(UITableViewCell *) tableView:(nonnull UITableView *) tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{

    UITableViewCell *cell = [ tableView dequeueReusableCellWithIdentifier:@"moment"];
    
    if( cell == nil ){
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"moment"] ;
        
        UILabel *dayLable = [[UILabel alloc] initWithFrame:CGRectMake(0, 16, 47, 46)];
        dayLable.text = @"7";
        dayLable.textColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:0.3];
        dayLable.textAlignment = NSTextAlignmentRight;
        dayLable.font = [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:40];
        [cell.contentView addSubview:dayLable];
        
        UILabel *dayOfWeekLabel = [[UILabel alloc] initWithFrame:CGRectMake(52, 23, 36, 15)];
        dayOfWeekLabel.textColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:0.3];
        dayOfWeekLabel.font = [UIFont systemFontOfSize:12];
        dayOfWeekLabel.textAlignment = NSTextAlignmentLeft;
        dayOfWeekLabel.text = @"星期五";
        [cell.contentView addSubview:dayOfWeekLabel];
        
        UILabel *yearAndMonthLabel = [[UILabel alloc] initWithFrame:CGRectMake(52, 38, 160, 15)];
        yearAndMonthLabel.font = [UIFont systemFontOfSize:12];
        yearAndMonthLabel.textColor = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:0.3];
        yearAndMonthLabel.textAlignment = NSTextAlignmentLeft;
        yearAndMonthLabel.text = @"2016年04月";
        [cell.contentView addSubview:yearAndMonthLabel];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;

    }
    
    return cell;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 200;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MomentDetailViewController *detail = [[MomentDetailViewController alloc] init];
    
    [self.navigationController pushViewController:detail animated:YES];
    
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
