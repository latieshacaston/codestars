//
//  CustomTableViewCell.h
//  BestFreshPrinceEpisodes
//
//  Created by new on 8/28/15.
//  Copyright (c) 2015 new. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell


@property (nonatomic, weak) IBOutlet UILabel *episodeName;

@property (nonatomic, weak) IBOutlet UILabel *airDateInfo;

@property (nonatomic, weak) IBOutlet UILabel *episodeDescription;

@property (nonatomic, weak) IBOutlet UIImageView *episodeImage;





@end
