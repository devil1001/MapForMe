//
//  CustomAnnotation.m
//  MapsForMe
//
//  Created by devil1001 on 22.04.17.
//  Copyright © 2017 devil1001. All rights reserved.
//

#import "CustomAnnotation.h"

@implementation CustomAnnotation

-(id)initWithTitle:(NSString *)myTitle Location:(CLLocationCoordinate2D)location {
    self = [super init];
    if (self){
        _title = myTitle;
        _coordinate = location;
    }
    return self;
}

-(MKAnnotationView *)annotationView{
    MKAnnotationView *annotationView = [[MKAnnotationView alloc] initWithAnnotation:self reuseIdentifier:@"CustomAnnotation"];
    annotationView.enabled = YES;
    annotationView.canShowCallout = YES;
    NSData *imageData = [NSData dataWithContentsOfFile:@"/Users/devil1001/Documents/ios/MapsForMe/MapsForMe/Photos/Base.lproj/Photo_Place.jpg"];
    annotationView.image = [UIImage imageWithData:imageData scale:5.0];
    //annotationView.image = [UIImage imageNamed:@"Photo_Place.jpg"];
    annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    return annotationView;
}

@end
