//
//  SwinjectStoryboard+SetUp.m
//  SwinjectStoryboard
//
//  Created by Mark DiFranco on 2017-05-27.
//  Copyright © 2017 Swinject Contributors. All rights reserved.
//

#import "SwinjectStoryboard+SetUp.h"
#import <SwinjectStoryboard/SwinjectStoryboardProtocol.h>

#if defined TARGET_OS_IOS | defined TARGET_OS_TV | defined TARGET_OS_MAC

@implementation SwinjectStoryboard (SetUp)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        if ([self conformsToProtocol:@protocol(SwinjectStoryboardProtocol)] &&
            [[self class] respondsToSelector:@selector(setup)]) {
            [[self class] performSelector:@selector(setup)];
        }
    });
}

@end

#endif
