//
//  obstacle9.m
//  RedDot
//
//  Created by Thanawith Munkatitum on 2/16/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "obstacle9.h"

@implementation obstacle9

{
    CCNode *_obstacle9;
    
}


#define ARC4RANDOM_MAX      0x100000000

// visibility on a 3,5-inch iPhone ends a 88 points and we want some meat
//static const CGFloat minimumYPositionreddot = 88.f;
//static const CGFloat maximumYPositionreddot = 568.f;
// visibility ends at 480 and we want some meat


- (void)didLoadFromCCB {
    _obstacle9.physicsBody.collisionType = @"level9";
    _obstacle9.physicsBody.sensor = YES;
}

- (void)setupRandomPosition9
{
    // value between 0.f and 1.f
    CGFloat random = ((double)arc4random() / ARC4RANDOM_MAX);
    //CGFloat range =  maximumYPositionreddot - minimumYPositionreddot;
    //CGFloat position = (random * range);
    _obstacle9.position = ccp(_obstacle9.position.x , random * 500.f );
    
}

@end
