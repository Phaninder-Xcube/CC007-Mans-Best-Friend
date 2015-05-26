//
//  MBFDog.h
//  CC007 Mans Best Friend
//
//  Created by systemtest on 26/05/15.
//  Copyright (c) 2015 PurpleTalk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *breed;
@property (nonatomic, strong) NSString *imageName;

-(void)bark;
-(void)barkANumberOfTimes: (int)numberOfTimes;
-(void)changeBreedToWereWolf;
-(void)barkANumberOfTimes: (int)numberOfTimes loudly:(BOOL)isLoud;
-(int)ageInDogYearsFromAge:(int)regularAge;
@end
