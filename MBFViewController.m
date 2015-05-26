
//  MBFViewController.m
//  CC007 Mans Best Friend
//
//  Created by systemtest on 26/05/15.
//  Copyright (c) 2015 PurpleTalk. All rights reserved.
//

#import "MBFViewController.h"

@interface MBFViewController ()

@end

@implementation MBFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.myDogs = [[NSMutableArray alloc] init];
    
    MBFDog *myDog = [[MBFDog alloc] init];
    myDog.name = @"Nana";
    myDog.breed = @"St. Bernard";
    myDog.age = 1;
    myDog.imageName = @"St.Bernard.JPG";
    
    self.myImageView.image = [UIImage imageNamed:myDog.imageName];
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    MBFDog *dog2 = [[MBFDog alloc] init];
    dog2.name = @"Wish Bone";
    dog2.breed = @"Jack Russel Terrier";
    dog2.imageName = @"JRT.jpg";

    MBFDog *dog3 = [[MBFDog alloc] init];
    dog3.name = @"Lassie";
    dog3.breed = @"Collie";
    dog3.imageName = @"BorderCollie.jpg";
    
    MBFDog *dog4 = [[MBFDog alloc] init];
    dog4.name = @"Angel";
    dog4.breed = @"Grey Hound";
    dog4.imageName = @"ItalianGreyhound.jpg";
    
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:dog2];
    [self.myDogs addObject:dog3];
    [self.myDogs addObject:dog4];
    self.currentDogIndex = 0;
    
    MBFPuppy *littlePuppy = [[MBFPuppy alloc] init];
    [littlePuppy bark];
    littlePuppy.name = @"Bo O";
    littlePuppy.breed = @"Portuguese Water Dog";
    littlePuppy.imageName = @"Bo.jpg";
    
    [self.myDogs addObject:littlePuppy];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender {
    
    NSInteger numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs;
    if (self.currentDogIndex == randomIndex && self.currentDogIndex == 0) {
        randomIndex ++;
    }
    else if (self.currentDogIndex == randomIndex) {
        randomIndex --;
    }
    
    MBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex];
    [UIView transitionWithView:self.view duration:1 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
            self.myImageView.image = [UIImage imageNamed:randomDog.imageName];
            self.nameLabel.text = randomDog.name;
            self.breedLabel.text = randomDog.breed;
        } completion:^(BOOL finished) {
            
        }];
        //    self.myImageView.image = [UIImage imageNamed:randomDog.imageName];
        //    self.nameLabel.text = randomDog.name;
        //    self.breedLabel.text = randomDog.breed;
        sender.title = @"And Another";
        self.currentDogIndex = randomIndex;

}

-(void) printHelloWorld{
    NSLog(@"Hello World");
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
