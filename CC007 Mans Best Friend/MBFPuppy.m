//
//  MBFPuppy.m
//  CC007 Mans Best Friend
//
//  Created by systemtest on 26/05/15.
//  Copyright (c) 2015 PurpleTalk. All rights reserved.
//

#import "MBFPuppy.h"

@implementation MBFPuppy

- (void)givePuppyEyes {
    NSLog(@":(");
}

-(void)bark{
    NSLog(@"Whimper Whimper");
    [self givePuppyEyes];
    [super bark];
}
@end
