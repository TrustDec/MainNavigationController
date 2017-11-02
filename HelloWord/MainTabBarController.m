//
//  MainTabBarController.m
//  HelloWord
//
//  Created by Trust on 2017/11/2.
//  Copyright © 2017年 Trust. All rights reserved.
//

#import "MainTabBarController.h"
#import "MainNavigationController.h"
#import "BaseViewController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //创建 一个可变数组 并初始化
    NSMutableArray *mArr = [NSMutableArray array];
    
    //循环 创建4个控制器
    for (int i = 0 ; i < 4 ; i ++) {
        //实例化 视图控制器
        BaseViewController *vc = [[BaseViewController alloc]init];
        
        //设置视图的背景颜色
        vc.view.backgroundColor = [UIColor colorWithRed:arc4random() % 10 * 0.1  green:arc4random() % 10 * 0.1  blue:arc4random() % 10 * 0.1  alpha:1];
        
        //设置 名称
        vc.title = [NSString stringWithFormat:@"第%d个控制器",i + 1];
        
        //实例化 导航控制器 并初始化
        MainNavigationController *nav = [[MainNavigationController alloc]initWithRootViewController:vc];
        
        //添加 视图控制器 到 数组
        [mArr addObject:nav];
    }
    
    self.viewControllers = mArr;
    
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
