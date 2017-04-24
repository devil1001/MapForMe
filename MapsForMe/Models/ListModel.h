//
//  ListModel.h
//  MapsForMe
//
//  Created by devil1001 on 24.04.17.
//  Copyright © 2017 devil1001. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListModel : NSObject

@property (strong, nonatomic) NSString *header;
@property (strong, nonatomic) NSString *imagePath;

- (instancetype) initWithHeader:(NSString *)header imagePath:(NSString *)imagePath;

@end
