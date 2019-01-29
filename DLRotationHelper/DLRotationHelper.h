//
//  DLRotationHelper.h
//  DLRotationHelper
//
//  Created by Dalang on 2019/1/29.
//  Copyright © 2019 Dalang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DLMacors.h"

NS_ASSUME_NONNULL_BEGIN

@interface DLRotationHelper : NSObject

DLSingletonH(Helper)

@property (nonatomic, assign, readonly) UIInterfaceOrientationMask interfaceOrientationMask;

@property (nonatomic, assign) UIDeviceOrientation orientation;

@end

NS_ASSUME_NONNULL_END
