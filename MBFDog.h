//
//  MBFDog.h
//  Man's Best Friend
//
//  Created by Enrique Benitez Nevarez on 3/21/14.
//  Copyright (c) 2014 Kraken Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFDog : NSObject

@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (strong, nonatomic) UIImage *image;
@property (strong, nonatomic) NSString *name;



-(void)bark;
-(void)barkNumberOfTimes:(int)numberOfTimes;
-(void)changeBreedToWerewolf;
-(void)barkNumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int)ageInDogYearsFromAge:(int)regularAge;



@end
