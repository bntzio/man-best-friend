//
//  MBFDog.m
//  Man's Best Friend
//
//  Created by Enrique Benitez Nevarez on 3/21/14.
//  Copyright (c) 2014 Kraken Labs. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog

-(void)bark
{
    NSLog(@"Woof Woof!");
}

-(void)barkNumberOfTimes:(int)numberOfTimes
{
    for (int bark = 1; bark <= numberOfTimes; bark++)
        [self bark];
}

-(void)changeBreedToWerewolf
{
    self.breed = @"Werewolf";
}

-(void)barkNumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if (!isLoud){
        for (int bark = 1; bark <= numberOfTimes; bark++){
            NSLog(@"yip yip");
        }
    } else {
        for (int bark = 1; bark <= numberOfTimes; bark++){
            NSLog(@"Ruff Ruff!");
        }
    }
}


-(int)ageInDogYearsFromAge:(int)regularAge
{
    int newAge = regularAge * 7;
    return newAge;
}

@end
