//
//  obstacle3.m
//  RedDot
//
//  Created by Thanawith Munkatitum on 2/10/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "obstacle3.h"

@implementation obstacle3

{
    CCNode *_obstacle3;
}
#define ARC4RANDOM_MAX      0x100000000
// visibility on a 3,5-inch iPhone ends a 88 points and we want some meat

static const CGFloat minimumXPositionreddot = 600.f;
static const CGFloat minimumYPositionreddot = 450.f;

- (void)didLoadFromCCB {
    _obstacle3.physicsBody.collisionType = @"obstacle3";
    _obstacle3.physicsBody.sensor = YES;
    
}

- (void)setupRandomPositionobstacle3 {
    // value between 0.f and 1.f
    CGFloat random = ((double)arc4random() / ARC4RANDOM_MAX);
    CGFloat range = minimumXPositionreddot;
    _obstacle3.position = ccp(_obstacle3.position.x + (random * range), minimumYPositionreddot );
}

@end
