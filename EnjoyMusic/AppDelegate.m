//
//  AppDelegate.m
//  EnjoyMusic
//
//  Created by 王鹏 on 13-9-16.
//  Copyright (c) 2013年 王鹏. All rights reserved.
//

#import "AppDelegate.h"
#import "Header.h"
#import "MMDrawerController.h"
#import "MMExampleDrawerVisualStateManager.h"
@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
     
    
    LeftViewController *leftVC = [[LeftViewController alloc] init];
    UINavigationController *leftNav = [[UINavigationController alloc] initWithRootViewController:leftVC];
     
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homeVC];
 
    RightViewController *rightVC = [[RightViewController alloc] init];
    UINavigationController *rightNav = [[UINavigationController alloc] initWithRootViewController:rightVC];
     
    MMDrawerController * drawerController = [[MMDrawerController alloc]
                                             initWithCenterViewController:homeNav
                                             leftDrawerViewController:leftNav
                                             rightDrawerViewController:rightNav];
    [drawerController setMaximumLeftDrawerWidth:280.0];
    [drawerController setMaximumRightDrawerWidth:280.0];
    [drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
    [drawerController
     setDrawerVisualStateBlock:^(MMDrawerController *drawerController, MMDrawerSide drawerSide, CGFloat percentVisible) {
         MMDrawerControllerDrawerVisualStateBlock block;
         block = [[MMExampleDrawerVisualStateManager sharedManager]
                  drawerVisualStateBlockForDrawerSide:drawerSide];
         if(block){
             block(drawerController, drawerSide, percentVisible);
         }
     }];
    self.window.rootViewController = drawerController;
    [leftVC release];
    [homeVC release];
    [rightVC release];
    
    [leftNav release];
    [homeNav release];
    [rightNav release];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
