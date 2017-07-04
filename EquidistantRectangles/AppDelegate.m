//
//  AppDelegate.m
//  EquidistantRectangles
//
//  Created by Admin on 04.07.17.
//  Copyright © 2017 ilya. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-(BOOL) application: (UIApplication *)application didFinishLaunchingWithOptions: (NSDictionary *)launchOptions {
    ViewController *vc = [ViewController new];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setRootViewController:vc];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
