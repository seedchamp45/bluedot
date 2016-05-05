//
//  obstacle2.m
//  RedDot
//
//  Created by Thanawith Munkatitum on 2/8/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "obstacle2.h"

@implementation obstacle2

{
    CCNode *_topPipe;
    CCNode *_bottomPipe;

}


#define ARC4RANDOM_MAX      0x100000000

// visibility on a 3,5-inch iPhone ends a 88 points and we want some meat
static const CGFloat minimumYPositionTopPipe = 88.f;
// visibility ends at 480 and we want some meat
static const CGFloat maximumYPositionBottomPipe = 400.f;
// distance between top and bottom pipe
static const CGFloat pipeDistance = 150.f;
// calculate the end of the range of top pipe
static const CGFloat maximumYPositionTopPipe = maximumYPositionBottomPipe - pipeDistance;

- (void)didLoadFromCCB {
    _topPipe.physicsBody.collisionType = @"level2";
    _topPipe.physicsBody.sensor = YES;
    
    _bottomPipe.physicsBody.collisionType = @"level2";
    _bottomPipe.physicsBody.sensor = YES;
}

- (void)setupRandomPosition2 {
    
    // value between 0.f and 1.f
    CGFloat random = ((double)arc4random() / ARC4RANDOM_MAX);
    CGFloat range = maximumYPositionTopPipe - minimumYPositionTopPipe;
    _topPipe.position = ccp(_topPipe.position.x, minimumYPositionTopPipe + (random * range));
    _bottomPipe.position = ccp(_bottomPipe.position.x, _topPipe.position.y + pipeDistance);


}

@end
