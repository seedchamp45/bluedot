//
//  obstacle8_1.m
//  RedDot
//
//  Created by Thanawith Munkatitum on 2/16/2558 BE.
//  Copyright (c) 2558 Apportable. All rights reserved.
//

#import "obstacle8_1.h"


@implementation obstacle8_1

- (void)didLoadFromCCB {
    self.physicsBody.collisionType = @"level8";
    self.physicsBody.sensor = YES;
}


@end
