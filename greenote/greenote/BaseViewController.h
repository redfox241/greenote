//
//  BaseViewController.h
//  greenote
//
//  Created by xiaojing on 16/4/25.
//  Copyright © 2016年 zhaochuanyong. All rights reserved.
//

#import <UIKit/UIKit.h>

#define UIColorFromHex(s) [UIColor colorWithRed:(((s & 0xFF0000) >> 16))/255.0 green:(((s &0xFF00) >>8))/255.0 blue:((s &0xFF))/255.0 alpha:1.0]

@interface BaseViewController : UIViewController

//自定义页面title
-(void) setSingleLineTitle:( NSString  *) title ;

@end
