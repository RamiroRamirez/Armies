//
//  ARMenuViewController.m
//  Armies
//
//  Created by Ramiro Ramirez on 26/07/15.
//  Copyright (c) 2015 RAM. All rights reserved.
//

#import "ARMenuViewController.h"
#import "ARConstants.h"
#import <ECSlidingViewController/UIViewController+ECSlidingViewController.h>

typedef enum {
    kHome,
    kBiographies,
    kVideos,
    kImages,
    kInstagram,
    kSettings
} MenuType;

@interface ARMenuViewController ()

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *menuButtonsArray;

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
    //
    // Localizing all buttons in menu
    //
    for (UIButton *button in self.menuButtonsArray) {
        switch ([self.menuButtonsArray indexOfObject:button]) {
            case kHome:
                button.titleLabel.text = NSLocalizedString(@"MENU_HOME", nil);
                break;
            case kBiographies:
                button.titleLabel.text = NSLocalizedString(@"MENU_BIOGRAPHY", nil);
                break;
            case kVideos:
                button.titleLabel.text = NSLocalizedString(@"MENU_VIDEOS", nil);
                break;
            case kImages:
                button.titleLabel.text = NSLocalizedString(@"MENU_IMAGES", nil);
                break;
            case kInstagram:
                button.titleLabel.text = NSLocalizedString(@"MENU_INSTAGRAM", nil);
                break;
            default:
                break;
        }
    }
}

- (void)showTopView:(NSString *)storyboardId {
    self.slidingViewController.topViewController = [self.storyboard instantiateViewControllerWithIdentifier:storyboardId];
    [self.slidingViewController resetTopViewAnimated:YES];
}

#pragma mark - Actions

- (IBAction)menuPressed:(id)sender {
    switch ([self.menuButtonsArray indexOfObject:sender]) {
        case kHome:
            [self showTopView:K_HOME_VIEWCONTROLLER];
            break;
        case kBiographies:
            [self showTopView:K_BIOGRAPHIES_VIEWCONTROLLER];
            break;
        case kVideos:
            [self showTopView:K_VIDEOS_VIEWCONTROLLER];
            break;
        case kImages:
            [self showTopView:K_IMAGES_VIEWCONTROLLER];
            break;
        case kInstagram:
            [self showTopView:K_INSTAGRAM_VIEWCONTROLLER];
            break;
        case kSettings:
            [self showTopView:K_SETTINGS_VIEWCONTROLLER];
            break;
        default:
            break;
    }
}

@end
