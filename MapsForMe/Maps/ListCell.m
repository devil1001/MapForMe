//
//  ListCell.m
//  MapsForMe
//
//  Created by devil1001 on 24.04.17.
//  Copyright © 2017 devil1001. All rights reserved.
//

#import "ListCell.h"
#import "ListModel.h"

@interface ListCell()
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@property (weak, nonatomic) IBOutlet UILabel *headLabel;

@end

@implementation ListCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)fillCellWithHeader:(ListModel *)model {
    self.iconImage.image = [UIImage imageNamed:model.imagePath];
    self.headLabel.text = model.header;
}

@end
