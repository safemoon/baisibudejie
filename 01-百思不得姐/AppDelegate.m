//
//  AppDelegate.m
//  01-百思不得姐
//
//  Created by 李冬 on 16/7/8.
//  Copyright © 2016年 Tim Lee. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 创建窗口
    self.window = [[UIWindow alloc] init];
    self.window.frame = [UIScreen mainScreen].bounds;
    
    // 设置窗口的根控制器
    UITabBarController *tabBarController=[[UITabBarController  alloc]init];

//   添加子控制器
    UIViewController *vc01 = [[UIViewController alloc]init];
    vc01.tabBarItem.title=@"精华";
    vc01.tabBarItem.image=[UIImage imageNamed:@"tabBar_essence_icon"];
    vc01.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_essence_click_icon"];
    vc01.view.backgroundColor=[UIColor grayColor];
//    [vc01.tabBarController addChildViewController:vc01]; //语句没执行，01的属性没有赋值
     [tabBarController addChildViewController:vc01];
    
    UIViewController *vc02 = [[UIViewController alloc]init];
    vc02.tabBarItem.title=@"新帖";
    vc02.tabBarItem.image=[UIImage imageNamed:@"tabBar_new_icon"];
    vc02.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_new_click_icon"];
    vc02.view.backgroundColor=[UIColor redColor];
//    [vc02.tabBarController addChildViewController:vc02];
     [tabBarController addChildViewController:vc02];
    
    UIViewController *vc03 = [[UIViewController alloc]init];
    vc03.tabBarItem.title=@"关注";
    vc03.tabBarItem.image=[UIImage imageNamed:@"tabBar_friendTrends_icon"];
    vc03.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    vc03.view.backgroundColor=[UIColor greenColor];
//    [vc03.tabBarController addChildViewController:vc03];
     [tabBarController addChildViewController:vc03];
    
    UIViewController *vc04 = [[UIViewController alloc]init];
    vc04.tabBarItem.title=@"我";
    vc04.tabBarItem.image=[UIImage imageNamed:@"tabBar_me_icon"];
    vc04.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_me_click_icon"];
    vc04.view.backgroundColor=[UIColor blueColor];
//    [vc04.tabBarController addChildViewController:vc04];
     [tabBarController addChildViewController:vc04];
    
    self.window.rootViewController= tabBarController;
    
    
    // 显示窗口
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
