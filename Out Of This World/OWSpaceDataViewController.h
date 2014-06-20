//
//  OWSpaceDataViewController.h
//  Out Of This World
//
//  Created by Michał Kozak on 10.03.2014.
//  Copyright (c) 2014 Raz Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWSpaceObject.h"

@interface OWSpaceDataViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) OWSpaceObject *spaceObject;

@end
