//
//  OWSpaceImageViewController.h
//  Out Of This World
//
//  Created by Michał Kozak on 09.03.2014.
//  Copyright (c) 2014 Raz Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OWSpaceObject.h"

@interface OWSpaceImageViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImageView *imageView;
@property (strong, nonatomic) OWSpaceObject *spaceObject;
@end
