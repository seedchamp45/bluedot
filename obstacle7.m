//
//  obstacle7.m
//  RedDot
//
//  Created by Thanawith Munkatitum on 2/15/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "obstacle7.h"

@implementation obstacle7


{
    CCNode *_topPipe;
    CCNode *_bottomPipe;
    
}


#define ARC4RANDOM_MAX      0x100000000



- (void)didLoadFromCCB {
    _topPipe.physicsBody.collisionType = @"level7";
    _topPipe.physicsBody.sensor = YES;
    
    _bottomPipe.physicsBody.collisionType = @"level7";
    _bottomPipe.physicsBody.sensor = YES;
}

- (void)setupRandomPosition7 {

    _topPipe.position = ccp(_topPipe.position.x, 0.f);
    _bottomPipe.position = ccp(_bottomPipe.position.x, 568.f);
    
    
}

@end
