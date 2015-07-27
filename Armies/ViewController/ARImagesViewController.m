//
//  ARImagesViewController.m
//  Armies
//
//  Created by Ramiro Ramirez on 26/07/15.
//  Copyright (c) 2015 RAM. All rights reserved.
//

#import "ARImagesViewController.h"
#import <ECSlidingViewController/UIViewController+ECSlidingViewController.h>

@interface ARImagesViewController ()

@end

@implementation ARImagesViewController

#pragma mark - View Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialConfigurations];
}

#pragma mark - Private Methods

- (void)initialConfigurations {
    self.title = NSLocalizedString(@"MENU_IMAGES", nil);
}

#pragma mark - Actions
- (IBAction)showMenu:(id)sender {
    [self.slidingViewController anchorTopViewToRightAnimated:YES];
}
@end
