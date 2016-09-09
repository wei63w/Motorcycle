//
//  AppDelegate.m
//  Motorcycle
//
//  Created by WYC on 16/9/8.
//  Copyright © 2016年 wei63w. All rights reserved.
//

#import "AppDelegate.h"
#import "NavigationController.h"
#import "MMDrawerController.h"
#import "MainViewController.h"
#import "LeftViewController.h"
#import "WycTabbarViewController.h"

@interface AppDelegate ()

@property (nonatomic,strong) MMDrawerController * drawerController;

@property (nonatomic, strong) WycTabbarViewController *tabBar;
@end

@implementation AppDelegate

-(BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    LeftViewController *leftDrawer = [mainStoryboard instantiateViewControllerWithIdentifier:@"LeftViewController"];
    self.tabBar = [[WycTabbarViewController alloc]init];
    
    self.drawerController = [[MMDrawerController alloc]
                                             initWithCenterViewController:self.tabBar
                                             leftDrawerViewController:leftDrawer
                                             rightDrawerViewController:nil];
    [self.drawerController setShowsShadow:NO];
    [self.drawerController setRestorationIdentifier:@"MMDrawer"];
    [self.drawerController setMaximumRightDrawerWidth:200.0];
    [self.drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [self.drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];

    
    [self.window setRootViewController:self.drawerController];
    
    
    return YES;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    [self.window setBackgroundColor:[UIColor whiteColor]];

    
    [self.window makeKeyAndVisible];
 
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
