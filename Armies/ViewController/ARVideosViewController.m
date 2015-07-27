//
//  ARVideosViewController.m
//  Armies
//
//  Created by Ramiro Ramirez on 26/07/15.
//  Copyright (c) 2015 RAM. All rights reserved.
//

#import "ARVideosViewController.h"
#import <ECSlidingViewController/UIViewController+ECSlidingViewController.h>

@interface ARVideosViewController ()

@end

@implementation ARVideosViewController

#pragma mark - View Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialConfigurations];
}

#pragma mark - Private Methods

- (void)initialConfigurations {
    self.title = NSLocalizedString(@"MENU_VIDEOS", nil);
}

#pragma mark - Actions

- (IBAction)showMenu:(id)sender {
    [self.slidingViewController anchorTopViewToRightAnimated:YES];
}
@end
