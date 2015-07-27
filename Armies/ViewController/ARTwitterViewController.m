//
//  ARTwitterViewController.m
//  Armies
//
//  Created by Ramiro Ramirez on 26/07/15.
//  Copyright (c) 2015 RAM. All rights reserved.
//

#import "ARTwitterViewController.h"
#import <ECSlidingViewController/UIViewController+ECSlidingViewController.h>

@interface ARTwitterViewController ()

@end

@implementation ARTwitterViewController

#pragma mark - View Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialConfigurations];
    // Do any additional setup after loading the view.
}

#pragma mark - Private Methods

- (void)initialConfigurations {
    self.slidingViewController.topViewAnchoredGesture =  ECSlidingViewControllerAnchoredGestureTapping | ECSlidingViewControllerAnchoredGestureCustom;
}

@end