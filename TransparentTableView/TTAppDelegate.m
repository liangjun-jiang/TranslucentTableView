//
//  TTAppDelegate.m
//  TransparentTableView
//
//  Created by Liangjun Jiang on 4/28/14.
//  Copyright (c) 2014 Liangjun Jiang. All rights reserved.
//

#import "TTAppDelegate.h"
#import "UIImage+ImageEffects.h"
@implementation TTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad) {
        UISplitViewController *splitViewController = (UISplitViewController *)self.window.rootViewController;
        UINavigationController *navigationController = [splitViewController.viewControllers lastObject];
        splitViewController.delegate = (id)navigationController.topViewController;
    }
    
    [self setupAppearance];
    return YES;
}
							
- (void)setupAppearance
{
    UILabel *headerLabelAppearance = [UILabel appearanceWhenContainedIn:[UITableViewHeaderFooterView class], nil];
    [headerLabelAppearance setBackgroundColor:[UIColor clearColor]];
    
    UITableViewCell *tableViewCellAppearance = [UITableViewCell appearanceWhenContainedIn:[UITableView class], nil];
    [tableViewCellAppearance setBackgroundColor:[UIColor clearColor]];
    
    UIView *contentViewAppearance = [UIView appearanceWhenContainedIn:[UITableViewCell class], nil];
    [contentViewAppearance setBackgroundColor:[UIColor clearColor]];
    
    [[UITableView appearance] setBackgroundColor:[UIColor clearColor]];
    [[UITableView appearance] setBackgroundView:[[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"tennis-drills"] applyLightEffect]]];
    
    [[UINavigationBar appearance] setBackgroundColor:[UIColor clearColor]];
    [[UINavigationBar appearance] setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
}

@end
