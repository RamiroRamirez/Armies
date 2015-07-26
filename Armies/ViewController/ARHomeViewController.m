//
//  ARHomeViewController.m
//  Armies
//
//  Created by Ramiro Ramirez on 26/07/15.
//  Copyright (c) 2015 RAM. All rights reserved.
//

#import "ARHomeViewController.h"
//#import <ECSlidingViewController/ECSlidingViewController.h>
#import <ECSlidingViewController/UIViewController+ECSlidingViewController.h>

@interface ARHomeViewController ()

@end

@implementation ARHomeViewController

#pragma mark - View Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialConfigurations];
}

#pragma mark - Private Methods

- (void)initialConfigurations {
    self.title = NSLocalizedString(@"MENU_HOME", nil);
}

#pragma mark - Actions

- (IBAction)showMenu:(id)sender {
    [self.slidingViewController anchorTopViewToRightAnimated:YES];
}

- (IBAction)showTwitter:(id)sender {
    [self.slidingViewController anchorTopViewToLeftAnimated:YES];
}

@end
