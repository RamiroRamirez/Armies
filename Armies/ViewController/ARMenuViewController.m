//
//  ARMenuViewController.m
//  Armies
//
//  Created by Ramiro Ramirez on 26/07/15.
//  Copyright (c) 2015 RAM. All rights reserved.
//

#import "ARMenuViewController.h"
#import <ECSlidingViewController/UIViewController+ECSlidingViewController.h>

@interface ARMenuViewController ()

@end

@implementation ARMenuViewController

# pragma mark -  View Life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialConfigurations];
}

#pragma mark - Private Methods

- (void)initialConfigurations {
    self.slidingViewController.topViewAnchoredGesture =  ECSlidingViewControllerAnchoredGestureTapping | ECSlidingViewControllerAnchoredGestureCustom;
}

@end
