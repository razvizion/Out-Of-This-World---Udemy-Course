//
//  OWSpaceObject.h
//  Out Of This World
//
//  Created by Michał Kozak on 09.03.2014.
//  Copyright (c) 2014 Raz Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OWSpaceObject : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) float gravitationalForce;
@property (nonatomic) float diameter;
@property (nonatomic) float yearLength;
@property (nonatomic) float dayLenghtl;
@property (nonatomic) float temperature;
@property (nonatomic) int numberOfMoons;
@property (strong, nonatomic) NSString *nickname;
@property (strong, nonatomic) NSString *interestFact;

@property (strong, nonatomic) UIImage *spaceImage;




-(id)initWithData:(NSDictionary *)data andImage:(UIImage *)image;



@end
