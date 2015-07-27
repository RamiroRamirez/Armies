//
//  ARInstagramViewController.m
//  Armies
//
//  Created by Ramiro Ramirez on 26/07/15.
//  Copyright (c) 2015 RAM. All rights reserved.
//

#import "ARInstagramViewController.h"
#import <ECSlidingViewController/UIViewController+ECSlidingViewController.h>

@interface ARInstagramViewController ()

@end

@implementation ARInstagramViewController

#pragma mark - View Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialConfigurations];
}

#pragma mark - Private Methods

- (void)initialConfigurations {
    self.title = NSLocalizedString(@"MENU_INSTAGRAM", nil);
}

#pragma mark - Actions

- (IBAction)showMenu:(id)sender {
    [self.slidingViewController anchorTopViewToRightAnimated:YES];
}
@end
