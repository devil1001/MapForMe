//
//  CustomAnnotation.h
//  MapsForMe
//
//  Created by devil1001 on 22.04.17.
//  Copyright © 2017 devil1001. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface CustomAnnotation : NSObject <MKAnnotation>

@property (nonatomic, readonly)CLLocationCoordinate2D coordinate;
@property (copy, nonatomic)NSString *title;


- (id)initWithTitle:(NSString *)myTitle Location:(CLLocationCoordinate2D)location;

- (MKAnnotationView *)annotationView;

@end
