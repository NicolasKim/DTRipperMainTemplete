//
//  AppDelegate.m
//  --TempleteMainProject--
//
//  Created by 金秋成 on 2017/4/20.
//  Copyright © 2017年 DTRipper. All rights reserved.
//

#import "AppDelegate.h"
#import <DTRipper/DTRipper.h>

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //1.上下文设置
    [DTRipper sharedInstance].context.launchOptions = launchOptions;
    [DTRipper sharedInstance].context.envKey        = @"dev";
    
    //2.模块儿添加
    //  1)单个添加
//    [[DTRipper sharedInstance].moduleManager addModule:[HomeModule class]];
    //  2)批量添加
//    [[DTRipper sharedInstance].moduleManager addModules:@[[HomeModule class],[HomeModule class],[HomeModule class]]];
    //  3)使用配置文件批量添加
//    NSString * path = [[NSBundle mainBundle]pathForResource:@"Modules" ofType:@"plist"];
//    [[DTRipper sharedInstance].moduleManager addModulesFilePath:path];
    
    //3.模块儿生命周期管理
    [[DTRipper sharedInstance].appDelegate application:application didFinishLaunchingWithOptions:launchOptions];
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    [[DTRipper sharedInstance].appDelegate applicationWillResignActive:application];
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    [[DTRipper sharedInstance].appDelegate applicationDidEnterBackground:application];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    [[DTRipper sharedInstance].appDelegate applicationWillEnterForeground:application];
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [[DTRipper sharedInstance].appDelegate applicationDidBecomeActive:application];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [[DTRipper sharedInstance].appDelegate applicationDidBecomeActive:application];
}


@end
