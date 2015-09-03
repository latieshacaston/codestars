//
//  CustomTableViewCell.h
//  CustomTableView
//
//  Created by new on 8/25/15.
//  Copyright (c) 2015 new. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *prepTimeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *thumbnailImageView;


@end
