//
//  MBFViewController.h
//  CC007 Mans Best Friend
//
//  Created by systemtest on 26/05/15.
//  Copyright (c) 2015 PurpleTalk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBFDog.h"
#import "MBFPuppy.h"
@interface MBFViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *myImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) NSInteger currentDogIndex;

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;
- (void)printHelloWorld;

@end
