//
//  OWOuterSpaceTableViewController.h
//  Out Of This World
//
//  Created by Michał Kozak on 08.03.2014.
//  Copyright (c) 2014 Raz Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWAddSpaceObjectViewController.h"

@interface OWOuterSpaceTableViewController : UITableViewController <OWAddSpaceObjectViewControllerDelegate>
@property (strong,nonatomic) NSMutableArray *planets;
@property (strong, nonatomic) NSMutableArray *addedSpaceObjects;

@end
