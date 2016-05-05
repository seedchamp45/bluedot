//
//  yellowdot.m
//  RedDot
//
//  Created by Thanawith Munkatitum on 2/12/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "yellowdot.h"

@implementation yellowdot

{
    CCNode *_yellowdot;
    
}


#define ARC4RANDOM_MAX      0x100000000

// visibility on a 3,5-inch iPhone ends a 88 points and we want some meat
//static const CGFloat minimumYPositionreddot = 88.f;
//static const CGFloat maximumYPositionreddot = 568.f;
// visibility ends at 480 and we want some meat


- (void)didLoadFromCCB {
    _yellowdot.physicsBody.collisionType = @"yelloww";
    _yellowdot.physicsBody.sensor = YES;
}

- (void)setupRandomPositionyellow {
    
    // value between 0.f and 1.f
    CGFloat random = ((double)arc4random() / ARC4RANDOM_MAX);
    //CGFloat range =  maximumYPositionreddot - minimumYPositionreddot;
    //CGFloat position = (random * range);
    _yellowdot.position = ccp(random * 330.f , random * 568.f );
    
    
    
}

@end
