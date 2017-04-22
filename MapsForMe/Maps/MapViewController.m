//
//  MapViewController.m
//  MapsForMe
//
//  Created by devil1001 on 23.04.17.
//  Copyright © 2017 devil1001. All rights reserved.
//

#import "MapViewController.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "CustomAnnotation.h"

@interface MapViewController () <CLLocationManagerDelegate, MKMapViewDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end

@implementation MapViewController {
    CLLocationManager *locationManager;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Hello";
    self.mapView.delegate = self;
    self.mapView.showsUserLocation = YES;
    [self.mapView setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
    CLLocationCoordinate2D target = CLLocationCoordinate2DMake(48.742426, 44.537126);
    CustomAnnotation *myAnnotation = [[CustomAnnotation alloc] initWithTitle:@"Родина мать" Location:target];
    [self.mapView addAnnotation:myAnnotation];
    //    MKPlacemark *place = [[MKPlacemark alloc] initWithCoordinate:target];
    //    MKPointAnnotation *annotPoint = [[MKPointAnnotation alloc] init];
    //    annotPoint.title = @"Родина Мать";
    //    annotPoint.coordinate = place.coordinate;
    //    NSArray *array = @[annotPoint];
    //    [self.map showAnnotations:array animated:YES];
        locationManager = [[CLLocationManager alloc] init];
        [locationManager requestWhenInUseAuthorization];
        locationManager.delegate = self;
        locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    //
    //    [locationManager startUpdatingLocation];
    //
}

- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(nonnull id<MKAnnotation>)annotation {
    if ([annotation isKindOfClass:[CustomAnnotation class]]) {
        CustomAnnotation *myLocation = (CustomAnnotation *)annotation;
        MKAnnotationView *annotationView = [mapView dequeueReusableAnnotationViewWithIdentifier:@"CustomAnnotation"];

        if (annotationView == nil) {
            annotationView = myLocation.annotationView;
        }
        else
            annotationView.annotation = annotation;
        return annotationView;
    }
    return nil;

}


- (IBAction)changeTypeOfMap:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        self.mapView.mapType = MKMapTypeStandard;
    } else if (sender.selectedSegmentIndex == 1) {
        self.mapView.mapType = MKMapTypeSatellite;
    } else if (sender.selectedSegmentIndex == 2) {
        self.mapView.mapType = MKMapTypeHybrid;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
