//
//  MBFDog.m
//  CC007 Mans Best Friend
//
//  Created by systemtest on 26/05/15.
//  Copyright (c) 2015 PurpleTalk. All rights reserved.
//

#import "MBFDog.h"


@implementation MBFDog

-(void)bark {
    NSLog(@"Woof Woof!");
}

-(void)barkANumberOfTimes: (int)numberOfTimes {
    for (NSInteger i = numberOfTimes; i > 0; i--) {
        [self bark];
    }
}

-(void)changeBreedToWereWolf {
    self.breed = @"WereWolf";
}

-(void)barkANumberOfTimes: (int)numberOfTimes loudly:(BOOL)isLoud {
    if (!isLoud) {
        for (NSInteger i = numberOfTimes; i > 0; i--) {
            NSLog(@"yip yip");
        }
    }
    else {
        for (NSInteger i = numberOfTimes; i > 0; i--) {
            NSLog(@"Ruff Ruff");
        }
    }
}

-(int)ageInDogYearsFromAge:(int)regularAge {
    int newAge = regularAge * 7;
    return newAge;
}

@end
