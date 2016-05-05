//
//  obstacle10.m
//  RedDot
//
//  Created by Thanawith Munkatitum on 2/17/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "obstacle10.h"

@implementation obstacle10


{
    CCNode *_topPipe;
    CCNode *_pipe;
    CCNode *_bottomPipe;
    
}


- (void)didLoadFromCCB {
    _topPipe.physicsBody.collisionType = @"level10";
    _topPipe.physicsBody.sensor = YES;
    
    _pipe.physicsBody.collisionType = @"level10";
    _pipe.physicsBody.sensor = YES;
    
    _bottomPipe.physicsBody.collisionType = @"level10";
    _bottomPipe.physicsBody.sensor = YES;
}

- (void)setupRandomPosition10 {
    
    _topPipe.position = ccp(_topPipe.position.x, 0.f);
     _pipe.position = ccp(_topPipe.position.x, 250.f);
    _bottomPipe.position = ccp(_bottomPipe.position.x, 568.f);
    
}

@end
