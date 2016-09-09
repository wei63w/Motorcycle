//
//  NavigationController.m
//  Motorcycle
//
//  Created by WYC on 16/9/8.
//  Copyright © 2016年 wei63w. All rights reserved.
//

#import "NavigationController.h"
#import "MainViewController.h"
#import "MineViewController.h"
#import "UIViewController+MMDrawerController.h"
#import "MMDrawerBarButtonItem.h"

@interface NavigationController ()

@property (nonatomic, strong) UITabBarController *tabbarController;

@end

@implementation NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 使导航条有效
    [self setNavigationBarHidden:NO];
    // 显示导航条，但由于导航条有效，系统的返回按钮页有效，所以可以使用系统的右滑返回手势。
    [self.navigationBar setHidden:NO];
    
    // 是否可右滑返回
    self.interactivePopGestureRecognizer.enabled = YES;
    
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
