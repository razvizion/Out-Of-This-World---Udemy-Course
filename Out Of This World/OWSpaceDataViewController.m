//
//  OWSpaceDataViewController.m
//  Out Of This World
//
//  Created by Michał Kozak on 10.03.2014.
//  Copyright (c) 2014 Raz Labs. All rights reserved.
//

#import "OWSpaceDataViewController.h"

@interface OWSpaceDataViewController ()

@end

@implementation OWSpaceDataViewController

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
    self.view.backgroundColor = [UIColor blackColor];
    self.tableView.backgroundColor = [UIColor clearColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"DataCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"Nickname: ";
            cell.detailTextLabel.text = self.spaceObject.nickname;
            break;
        case 1:
            cell.textLabel.text = @"Diameter (km): ";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f",self.spaceObject.diameter] ;
            break;
            
        case 2:
            cell.textLabel.text = @"Gravitational Force: ";
            cell.detailTextLabel.text = [NSString stringWithFormat:@"%f",self.spaceObject.gravitationalForce] ;
            break;
        case 3:
            cell.textLabel.text = @"Length of a Year (days): ";
            cell.detailTextLabel.text =  [NSString stringWithFormat:@"%f",self.spaceObject.yearLength] ;

            break;
        case 4:
            cell.textLabel.text = @"Lenght of a Day (hours): ";
            cell.detailTextLabel.text =  [NSString stringWithFormat:@"%f",self.spaceObject.dayLenghtl] ;

            break;
        case 5:
            cell.textLabel.text = @"Temperature (c):";
            cell.detailTextLabel.text =  [NSString stringWithFormat:@"%f",self.spaceObject.temperature] ;

            break;
        case 6:
            cell.textLabel.text = @"Number of Moons: ";
            cell.detailTextLabel.text =  [NSString stringWithFormat:@"%i",self.spaceObject.numberOfMoons] ;
            break;
        case 7:
            cell.textLabel.text = @"Interesting Fact: ";
            cell.detailTextLabel.text = self.spaceObject.interestFact;
            break;
            
        default:
            break;
    }
    
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 8;
}

@end
