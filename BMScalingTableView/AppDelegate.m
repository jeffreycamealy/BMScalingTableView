//
//  AppDelegate.m
//  BMScalingTableView
//
//  Created by Jeffrey Camealy on 12/12/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "AppDelegate.h"
#import "TestingVC.h"

@implementation AppDelegate

#pragma mark - AppDelegate Method

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self setupWindow];
    [self setupRootVC];
    
    return YES;
}


#pragma mark - Private API

- (void)setupWindow {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window makeKeyAndVisible];
}

- (void)setupRootVC {
    self.window.rootViewController = [TestingVC new];
}

@end
