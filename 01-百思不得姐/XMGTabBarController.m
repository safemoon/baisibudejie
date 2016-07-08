//
//  XMGTabBarController.m
//  01-百思不得姐
//
//  Created by 李冬 on 16/7/8.
//  Copyright © 2016年 Tim Lee. All rights reserved.
//隐藏tabbarcontroller的内部实现，只提供外界view就可以了
//tabbar会默认对tabbaritem。image做背景色的渲染。保持原始取消渲染

#import "XMGTabBarController.h"

@interface XMGTabBarController ()

@end

@implementation XMGTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    
    //   添加子控制器
//    UIViewController *vc01 = [[UIViewController alloc]init];
//    vc01.tabBarItem.title=@"精华";
//    vc01.tabBarItem.image=[UIImage imageNamed:@"tabBar_essence_icon"];
//    UIImage *image =[UIImage imageNamed:@"tabBar_essence_click_icon"];
////    UIImage *image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
////  保持图片不渲染，更简便做法是进assets找到对应图片，第三个标签，选rendermodeoriginal  image设置了再赋值给自己。
//    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    vc01.tabBarItem.selectedImage=image;
//    vc01.view.backgroundColor=[UIColor grayColor];
//    通过属性字典设置 选中后VC01 字体大小无效 颜色有效
//    - (void)setTitleTextAttributes:(nullable NSDictionary<NSString *,id> *)attributes forState:(UIControlState)state NS_AVAILABLE_IOS(5_0) UI_APPEARANCE_SELECTOR;  后面有appearance，都可以通过appearance统一设置
//    
    
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:10];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:20];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    
    
    UIViewController *vc01 = [[UIViewController alloc]init];
    vc01.tabBarItem.title=@"精华";
    vc01.tabBarItem.image=[UIImage imageNamed:@"tabBar_essence_icon"];
    vc01.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    [vc01.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [vc01.tabBarItem setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
    vc01.view.backgroundColor=[UIColor grayColor];
    [self addChildViewController:vc01];
    
    
    
    
    UIViewController *vc02 = [[UIViewController alloc]init];
    vc02.tabBarItem.title=@"新帖";
    vc02.tabBarItem.image=[UIImage imageNamed:@"tabBar_new_icon"];
    vc02.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_new_click_icon"];
    vc02.view.backgroundColor=[UIColor redColor];
    [vc02.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [self addChildViewController:vc02];
    
    UIViewController *vc03 = [[UIViewController alloc]init];
    vc03.tabBarItem.title=@"关注";
    vc03.tabBarItem.image=[UIImage imageNamed:@"tabBar_friendTrends_icon"];
    vc03.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    vc03.view.backgroundColor=[UIColor greenColor];
    [vc03.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [self addChildViewController:vc03];
    
    UIViewController *vc04 = [[UIViewController alloc]init];
    vc04.tabBarItem.title=@"我";
    vc04.tabBarItem.image=[UIImage imageNamed:@"tabBar_me_icon"];
    vc04.tabBarItem.selectedImage=[UIImage imageNamed:@"tabBar_me_click_icon"];
    vc04.view.backgroundColor=[UIColor blueColor];
    [vc04.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [self addChildViewController:vc04];
    
    
    
    
    
}



@end
