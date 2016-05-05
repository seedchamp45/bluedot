//
//  obstacle5.m
//  RedDot
//
//  Created by Thanawith Munkatitum on 2/12/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "obstacle5.h"

@implementation obstacle5

{
    CCNode *_obstacle5;
    
}


#define ARC4RANDOM_MAX      0x100000000

// visibility on a 3,5-inch iPhone ends a 88 points and we want some meat
//static const CGFloat minimumYPositionreddot = 88.f;
//static const CGFloat maximumYPositionreddot = 568.f;
// visibility ends at 480 and we want some meat


- (void)didLoadFromCCB {
    _obstacle5.physicsBody.collisionType = @"level5";
    _obstacle5.physicsBody.sensor = YES;
}

- (void)setupRandomPosition5 {
    
    // value between 0.f and 1.f
    CGFloat random = ((double)arc4random() / ARC4RANDOM_MAX);
    //CGFloat range =  maximumYPositionreddot - minimumYPositionreddot;
    //CGFloat position = (random * range);
    _obstacle5.position = ccp(_obstacle5.position.x + 500.f, random * 568.f );
    
    
    
}

@end
