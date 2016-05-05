//
//  obstacle4.m
//  RedDot
//
//  Created by Thanawith Munkatitum on 2/11/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "obstacle4.h"

@implementation obstacle4

{
    CCNode *_obstacle4;
    
}


#define ARC4RANDOM_MAX      0x100000000

// visibility on a 3,5-inch iPhone ends a 88 points and we want some meat
//static const CGFloat minimumYPositionreddot = 88.f;
//static const CGFloat maximumYPositionreddot = 568.f;
// visibility ends at 480 and we want some meat


- (void)didLoadFromCCB {
    _obstacle4.physicsBody.collisionType = @"level4";
    _obstacle4.physicsBody.sensor = YES;
}

- (void)setupRandomPosition4 {

        // value between 0.f and 1.f
        CGFloat random = ((double)arc4random() / ARC4RANDOM_MAX);
        //CGFloat range =  maximumYPositionreddot - minimumYPositionreddot;
        //CGFloat position = (random * range);
        _obstacle4.position = ccp(_obstacle4.position.x , random * 500.f );
    
    
    
}

@end
