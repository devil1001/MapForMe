//
//  ListCell.h
//  MapsForMe
//
//  Created by devil1001 on 24.04.17.
//  Copyright © 2017 devil1001. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ListModel;

@interface ListCell : UITableViewCell

- (void)fillCellWithHeader:(ListModel *)model;

@end
