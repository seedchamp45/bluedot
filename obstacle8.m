//
//  obstacle8.m
//  RedDot
//
//  Created by Thanawith Munkatitum on 2/16/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "obstacle8.h"

@implementation obstacle8

{
    CCNode *_obstacle8;
    
}


#define ARC4RANDOM_MAX      0x100000000

// visibility on a 3,5-inch iPhone ends a 88 points and we want some meat
//static const CGFloat minimumYPositionreddot = 88.f;
//static const CGFloat maximumYPositionreddot = 568.f;
// visibility ends at 480 and we want some meat


- (void)didLoadFromCCB {
   // _obstacle8.physicsBody.collisionType = @"level8";
   // _obstacle8.physicsBody.sensor = YES;
}

- (void)setupRandomPosition8
{
    // value between 0.f and 1.f
    CGFloat random = ((double)arc4random() / ARC4RANDOM_MAX);
    //CGFloat range =  maximumYPositionreddot - minimumYPositionreddot;
    //CGFloat position = (random * range);
    _obstacle8.position = ccp(_obstacle8.position.x , random * 500.f );

}

@end
