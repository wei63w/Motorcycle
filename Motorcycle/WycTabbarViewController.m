//
//  WycTabbarViewController.m
//  Motorcycle
//
//  Created by WYC on 16/9/9.
//  Copyright © 2016年 wei63w. All rights reserved.
//

#import "WycTabbarViewController.h"
#import "MainViewController.h"
#import "MineViewController.h"
#import "NavigationController.h"

@interface WycTabbarViewController ()

@property (nonatomic, strong) NavigationController *Main;
@property (nonatomic, strong) NavigationController *Mine;

@end

@implementation WycTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //底部tabbar
    [self initializeTabBarController];

}
/**
 *  初始化TabBar
 */
-(void)initializeTabBarController{
    
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        MainViewController *home = sb.instantiateInitialViewController;
        [home.tabBarItem setImage:[[UIImage imageNamed:@"tab_icon1_normal.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        [home.tabBarItem setSelectedImage:[UIImage imageNamed:@"tab_icon1_selcet.png"]];
        home.tabBarItem.title = @"主页";
    
        UIStoryboard *mainsb = [UIStoryboard storyboardWithName:@"MineViewController" bundle:nil];
        MineViewController *mine = mainsb.instantiateInitialViewController;
        [mine.tabBarItem setImage:[[UIImage imageNamed:@"tab_icon5_normal.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        [mine.tabBarItem setSelectedImage:[UIImage imageNamed:@"tab_icon5_selcet.png"]];
        mine.tabBarItem.title = @"我的";
    
    
        self.Main = [[NavigationController alloc]initWithRootViewController:home];
        self.Mine = [[NavigationController alloc]initWithRootViewController:mine];
    
        self.viewControllers = [NSArray arrayWithObjects:self.Main,self.Mine,nil];
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
