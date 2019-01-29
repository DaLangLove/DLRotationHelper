//
//  DLRotationHelper.m
//  DLRotationHelper
//
//  Created by Dalang on 2019/1/29.
//  Copyright © 2019 Dalang. All rights reserved.
//

#import "DLRotationHelper.h"

@interface DLRotationHelper ()

@property (nonatomic, assign, readwrite) UIInterfaceOrientationMask interfaceOrientationMask;

@end

@implementation DLRotationHelper

DLSingletonM(Helper)

#pragma mark - Private
- (instancetype)init
{
    self = [super init];
    if (self) {
        _interfaceOrientationMask = UIInterfaceOrientationMaskPortrait;
    }
    return self;
}
#pragma mark - orientation
- (void)setOrientation:(UIDeviceOrientation)orientation
{
    if (_orientation == orientation) {
        return;
    }
    
    UIDevice *currentDevice = [UIDevice currentDevice];
    if (currentDevice.orientation == orientation) {
        [currentDevice setValue:@(_orientation) forKey:@"orientation"];
    }
    _orientation = orientation;
    
    UIInterfaceOrientationMask interfaceOrientationMask = UIInterfaceOrientationMaskPortrait;
    switch (orientation) {
        case UIDeviceOrientationPortrait:
            interfaceOrientationMask = UIInterfaceOrientationMaskPortrait;
            break;
        case UIDeviceOrientationPortraitUpsideDown:
            interfaceOrientationMask = UIInterfaceOrientationMaskPortraitUpsideDown;
            break;
        case UIDeviceOrientationLandscapeRight:
            interfaceOrientationMask = UIInterfaceOrientationMaskLandscapeLeft;
            break;
        case UIDeviceOrientationLandscapeLeft:
            interfaceOrientationMask = UIInterfaceOrientationMaskLandscapeRight;
            break;
        default:
            interfaceOrientationMask = UIInterfaceOrientationMaskPortrait;
            break;
    }
    [DLRotationHelper sharedHelper].interfaceOrientationMask = interfaceOrientationMask;
    [currentDevice setValue:@(orientation) forKey:@"orientation"];
}

@end
