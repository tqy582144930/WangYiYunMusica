//
//  AppDelegate.m
//  网易云音乐
//
//  Created by tuqiangyao on 2018/7/24.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThrid.h"
#import "VCFourth.h"
#import "VCFifth.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    VCFirst* vcFirst = [[VCFirst alloc] init];
    vcFirst.view.backgroundColor=[UIColor whiteColor];
    vcFirst.tabBarItem.image=[UIImage imageNamed:@"5"];
    vcFirst.title = @"发现";
    
    VCSecond* vcSecond = [[VCSecond alloc] init];
    vcSecond.view.backgroundColor=[UIColor whiteColor];
    vcSecond.tabBarItem.image=[UIImage imageNamed:@"2"];
    vcSecond.title = @"视频";
    
    VCThrid* vcThrid = [[VCThrid alloc] init];
    vcThrid.view.backgroundColor=[UIColor whiteColor];
    vcThrid.tabBarItem.image=[UIImage imageNamed:@"4"];
    vcThrid.title = @"我的";
    
    VCFourth* vcFourth = [[VCFourth alloc] init];
    vcFourth.view.backgroundColor=[UIColor whiteColor];
    vcFourth.tabBarItem.image=[UIImage imageNamed:@"1"];
    vcFourth.title = @"朋友";
    
    VCFifth* vcFifth = [[VCFifth alloc] init];
    vcFifth.view.backgroundColor=[UIColor whiteColor];
    vcFifth.tabBarItem.image=[UIImage imageNamed:@"3"];
    vcFifth.title = @"账号";
    
    UITabBarController* tabController = [[UITabBarController alloc] init];
    
    UINavigationController* nav3= [[UINavigationController alloc] initWithRootViewController:vcThrid];
    UINavigationController* nav5= [[UINavigationController alloc] initWithRootViewController:vcFifth];
    
    NSArray* arrayVC = [NSArray arrayWithObjects:vcFirst, vcSecond, nav3, vcFourth, nav5, nil];
    tabController.viewControllers = arrayVC;
    self.window.rootViewController = tabController;
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
