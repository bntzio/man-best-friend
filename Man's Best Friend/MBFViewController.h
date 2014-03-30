//
//  MBFViewController.h
//  Man's Best Friend
//
//  Created by Enrique Benitez Nevarez on 3/21/14.
//  Copyright (c) 2014 Kraken Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MBFViewController : UIViewController
-(void)printHelloWorld;
- (IBAction)newDogBarButtonPressed:(UIBarButtonItem *)sender;


@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;


@end