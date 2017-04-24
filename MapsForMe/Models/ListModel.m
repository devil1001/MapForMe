//
//  ListModel.m
//  MapsForMe
//
//  Created by devil1001 on 24.04.17.
//  Copyright © 2017 devil1001. All rights reserved.
//

#import "ListModel.h"

@implementation ListModel

- (instancetype)initWithHeader:(NSString *)header imagePath:(NSString *)imagePath {
    if (self = [super init]) {
        _header = header;
        _imagePath = imagePath;
    }
    return self;
}

@end
