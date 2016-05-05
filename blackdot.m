//
//  blackdot.m
//  BlueDot
//
//  Created by Thanawith Munkatitum on 7/1/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "blackdot.h"

@implementation blackdot

{

    CCNode *_blackdot;

    
}


- (void)didLoadFromCCB {
    _blackdot.physicsBody.collisionType = @"level11";
    _blackdot.physicsBody.sensor = YES;
    
}

- (void)setupRandomBlack {
    
    _blackdot.position = ccp(_blackdot.position.x, 284.f);

    
}

@end
