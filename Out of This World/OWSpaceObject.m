//
//  OWSpaceObject.m
//  Out of This World
//
//  Created by Laura Kirby on 9/1/14.
//  Copyright (c) 2014 Laura. All rights reserved.
//

#import "OWSpaceObject.h"
#import "AstronomicalData.h"

@implementation OWSpaceObject

//need to overide the current initializer, which is what we do below
//below means, take the current self and change it to new
 -(id) init
{
    self = [self initWithData:nil andImage:nil];
    return self;
}

//implement designated initializers
// "data" is the name of our dictionary 
-(id)initWithData:(NSDictionary *)data andImage:(UIImage *)image //why isn't the UIImage setup below?
{
    
    self = [super init];
    //supper equals super class
    //we are saying first do the code within NSObject
    //then we add additional code (which is below) for our custome properties and objects
    
    self.name = data[PLANET_NAME];
    self.gravitationalForce = [data[PLANET_GRAVITY] floatValue];  //with method "floatValue" we can change the NSNumber back to their original type (there is also boolvalue and others), which is what type we need here
    //data is our dictionary
    //we are keying into our dictionary using keyname "PLANETY_GRAVITY"
    //which we have access to b/c #import "AstronomicalData.h"
    //press command and then the keyname to find out where it came from, then press back arrow to go back
    self.diameter = [data[PLANET_DIAMETER] floatValue];
    self.yearLength = [data[PLANET_YEAR_LENGTH] floatValue];
    self.dayLength = [data[PLANET_DAY_LENGTH] floatValue];
    self.temperature = [data[PLANET_TEMPERATURE] floatValue];
    self.numberOfMoons = [data[PLANET_NICKNAME] intValue];
    self.nickname = data[PLANET_NICKNAME];
    self.interestFact = data[PLANET_INTERESTING_FACT];
    
    self.spaceImage = image;
    
    //we must return an object of type id b/c -(id)
    return self;
    
    
    
}


@end
