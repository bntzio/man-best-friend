//
//  MBFViewController.m
//  Man's Best Friend
//
//  Created by Enrique Benitez Nevarez on 3/21/14.
//  Copyright (c) 2014 Kraken Labs. All rights reserved.
//

#import "MBFViewController.h"
#import "MBFDog.h"

@interface MBFViewController ()

@end

@implementation MBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    //myDog = nil;
    //[myDog bark];
    //[myDog barkNumberOfTimes:3 loudly:YES];
    //int dogYears = [myDog ageInDogYearsFromAge:myDog.age];
    //NSLog(@"%i",dogYears);
    myDog.image = [UIImage imageNamed:@"St.Bernard.JPG"];
    
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    // my second dog object
    MBFDog *secondDog = [[MBFDog alloc] init];
    secondDog.name = @"Wishbone";
    secondDog.breed = @"Jack Russell Terrier";
    secondDog.image = [UIImage imageNamed:@"JRT.JPG"];
    
    // my third dog object
    MBFDog *thirdDog = [[MBFDog alloc] init];
    thirdDog.name = @"Lassie";
    thirdDog.breed = @"Collie";
    thirdDog.image = [UIImage imageNamed:@"BorderCollie.JPG"];
    
    // my fourth dog object
    MBFDog *fourthDog = [[MBFDog alloc] init];
    fourthDog.name = @"Angel";
    fourthDog.breed = @"Greyhound";
    fourthDog.image = [UIImage imageNamed:@"ItalianGreyhound.JPG"];
    
    // NSMutableArray (allocating in memory) and add objects to the container (array)
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    [self.myDogs addObject:thirdDog];
    [self.myDogs addObject:fourthDog];
    //NSLog(@"%@", self.myDogs);
    
    
    
    
    /*
    [myDog barkNumberOfTimes:7];
    NSLog(@"%@", myDog.breed);
    [myDog changeBreedToWerewolf];
    NSLog(@"%@",myDog.breed);
    myDog.breed = @"Lab";
    NSLog(@"%@",myDog.breed);
    */
    
    //[self printHelloWorld];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)printHelloWorld
{
    NSLog(@"Hello World");
}

- (IBAction)newDogBarButtonPressed:(UIBarButtonItem *)sender
{
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    MBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    
    //self.myImageView.image = randomDog.image;
    //self.nameLabel.text = randomDog.name;
    //self.breedLabel.text = randomDog.breed;
    sender.title = @"And Another";
    
    
    [UIView transitionWithView:self.view duration:2.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
    
    
}


@end
