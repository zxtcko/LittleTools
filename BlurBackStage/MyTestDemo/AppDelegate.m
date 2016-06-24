//
//  AppDelegate.m
//  MyTestDemo
//
//  Created by 邢 on 14-9-17.
//  Copyright (c) 2014年 ___My_Company___. All rights reserved.
//

#import "AppDelegate.h"
#import "TestView.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    _rootVC = [[RootViewController alloc] init];
    [self.window setRootViewController:_rootVC];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    UIView* view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    view.backgroundColor = [UIColor clearColor];
    view.tag = 1111;
    
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleDark];
    UIVisualEffectView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    blurEffectView.frame = view.bounds;
    blurEffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [view addSubview:blurEffectView];
    
    [[[UIApplication sharedApplication] keyWindow] addSubview:view];
}


- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSArray* array = [[UIApplication sharedApplication] keyWindow].subviews;
    for(id view in array)
        
    {
        if ([view isKindOfClass:[UIView class]])
        {
            UIView* myView = view;
            if (myView.tag == 1111)
            {
                [myView removeFromSuperview];
            }
        }

    }
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
