//
//  reddot.m
//  RedDot
//
//  Created by Thanawith Munkatitum on 2/5/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "reddot.h"

@implementation reddot
{
    CCNode *_reddot;
}
#define ARC4RANDOM_MAX      0x100000000
// visibility on a 3,5-inch iPhone ends a 88 points and we want some meat


- (void)didLoadFromCCB {
    _reddot.physicsBody.collisionType = @"red";
    _reddot.physicsBody.sensor = YES;

}

- (void)setupRandomPositionreddot {
    // value between 0.f and 1.f
    CGFloat random = ((double)arc4random() / ARC4RANDOM_MAX);

    _reddot.position = ccp(_reddot.position.x ,586.f * random );
}

@end
