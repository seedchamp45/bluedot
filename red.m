//
//  red.m
//  RedDot
//
//  Created by Thanawith Munkatitum on 4/29/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "red.h"

@implementation red
{
    CCNode *_red1;
    CCNode *_red2;
}
#define ARC4RANDOM_MAX      0x100000000
// visibility on a 3,5-inch iPhone ends a 88 points and we want some meat


- (void)didLoadFromCCB {
    _red1.physicsBody.collisionType = @"reddd";
    _red1.physicsBody.sensor = YES;
    _red2.physicsBody.collisionType = @"reddd";
    _red2.physicsBody.sensor = YES;
}

- (void)setupRandomPositionred {
    // value between 0.f and 1.f
    
    _red1.position = ccp(0 ,175.f );
    _red2.position = ccp(0 ,409.f );
}

@end
