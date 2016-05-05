//
//  blackdotball.m
//  BlueDot
//
//  Created by Thanawith Munkatitum on 7/1/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "blackdotball.h"

@implementation blackdotball
{
    CCNode *_blackdotball;
}


#define ARC4RANDOM_MAX      0x100000000

// visibility on a 3,5-inch iPhone ends a 88 points and we want some meat
static const CGFloat minimumYPositionTopPipe = 0.f;
// visibility ends at 480 and we want some meat
static const CGFloat maximumYPositionBottomPipe = 600.f;
// distance between top and bottom pipe
static const CGFloat pipeDistance = 300.f;
// calculate the end of the range of top pipe
static const CGFloat maximumYPositionTopPipe = maximumYPositionBottomPipe - pipeDistance;

- (void)didLoadFromCCB {
    _blackdotball.physicsBody.collisionType = @"level12";
    _blackdotball.physicsBody.sensor = YES;

}

- (void)setupRandombalckdotball {
    
    // value between 0.f and 1.f
    CGFloat random = ((double)arc4random() / ARC4RANDOM_MAX);
    CGFloat range = maximumYPositionTopPipe - minimumYPositionTopPipe;
    _blackdotball.position = ccp(_blackdotball.position.x, minimumYPositionTopPipe + (random * range));

    
    
}



@end
