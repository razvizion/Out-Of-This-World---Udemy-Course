//
//  OWAddSpaceObjectViewController.m
//  Out Of This World
//
//  Created by Michał Kozak on 12.03.2014.
//  Copyright (c) 2014 Raz Labs. All rights reserved.
//

#import "OWAddSpaceObjectViewController.h"

@interface OWAddSpaceObjectViewController ()

@end

@implementation OWAddSpaceObjectViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIImage *orionImage = [UIImage imageNamed:@"orion.jpg"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:orionImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    [self.delegate didCancel];
}

- (IBAction)addButtonPressed:(UIButton *)sender {
    OWSpaceObject *newSpaceObject = [self returnNewSpaceObject];
    [self.delegate addSpaceObject:(newSpaceObject)];
}
-(OWSpaceObject *)returnNewSpaceObject{
    OWSpaceObject *addedSpaceObject = [[OWSpaceObject alloc]init];
    addedSpaceObject.name = self.nameTextField.text;
    addedSpaceObject.nickname = self.nicknameTextField.text;
    addedSpaceObject.diameter = [self.diameterTextField.text floatValue];
    addedSpaceObject.temperature = [self.temperatureTextField.text floatValue];
    addedSpaceObject.numberOfMoons = [self.numberOfMoonsTextField.text intValue];
    addedSpaceObject.interestFact = self.interestingFactTextField.text;
    addedSpaceObject.spaceImage = [UIImage imageNamed:@"HubbleDeepFieldByNasa.jpg"];
    
    return addedSpaceObject;
}
@end
