//
//  ViewController.m
//  DLRotationHelper
//
//  Created by Dalang on 2019/1/29.
//  Copyright © 2019 Dalang. All rights reserved.
//

#import "ViewController.h"
#import "DLRotationHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)portraitAction:(id)sender {
    [DLRotationHelper sharedHelper].orientation = UIDeviceOrientationPortrait;
}

- (IBAction)landscapeLeftAction:(id)sender {
    [DLRotationHelper sharedHelper].orientation = UIDeviceOrientationLandscapeLeft;
}

- (IBAction)landscapeRightAction:(id)sender {
    [DLRotationHelper sharedHelper].orientation = UIDeviceOrientationLandscapeRight;
}


@end
