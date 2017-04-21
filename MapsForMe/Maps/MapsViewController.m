//
//  MapsViewController.m
//  MapsForMe
//
//  Created by devil1001 on 21.04.17.
//  Copyright © 2017 devil1001. All rights reserved.
//

#import "MapsViewController.h"
#import <CoreLocation/Corelocation.h>

@interface MapsViewController () <CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *map;

@end

@implementation MapsViewController {
    CLLocationManager *locationManager;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    //self.map = nil;
    self.title = @"Hello";
    self.map.showsUserLocation = YES;
    [self.map setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
    // Do any additional setup after loading the view.
//    locationManager = [[CLLocationManager alloc] init];
//    [locationManager requestWhenInUseAuthorization];
//    locationManager.delegate = self;
//    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
//    
//    [locationManager startUpdatingLocation];
//    
}




- (IBAction)changeTypeOfMap:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        self.map.mapType = MKMapTypeStandard;
    } else if (sender.selectedSegmentIndex == 1) {
        self.map.mapType = MKMapTypeSatellite;
    } else if (sender.selectedSegmentIndex == 2) {
        self.map.mapType = MKMapTypeHybrid;
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