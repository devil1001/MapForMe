//
//  CustomAnnotation.m
//  MapsForMe
//
//  Created by devil1001 on 22.04.17.
//  Copyright © 2017 devil1001. All rights reserved.
//

#import "CustomAnnotation.h"


@implementation CustomAnnotation

@synthesize title;

- (id)initWithTitle:(NSString *)myTitle Location:(CLLocationCoordinate2D)location {
    self = [super init];
    if (self){
        title = myTitle;
        _coordinate = location;
    }
    return self;
}

- (MKAnnotationView *)annotationView{
    MKAnnotationView *annotationView = [[MKAnnotationView alloc] initWithAnnotation:self reuseIdentifier:@"CustomAnnotation"];
    annotationView.enabled = YES;
    annotationView.canShowCallout = YES;
    NSData *imageData = [NSData dataWithContentsOfFile:@"/Users/devil1001/Documents/ios/MapsForMe/MapsForMe/Photos/List_Icon.png"];
    annotationView.image = [UIImage imageWithData:imageData scale:5.0];
    //annotationView.image = [UIImage imageNamed:@"Photo_Place.jpg"];
    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    annotationView.rightCalloutAccessoryView = infoBtn;
    return annotationView;
}


@end
