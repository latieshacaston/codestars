//
//  FavoritesTableViewCell.h
//  FreshPrince
//
//  Created by LaTiesha Caston on 10/21/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FavoritesTableViewCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UILabel *favSeasonEpisode;

@property (weak, nonatomic) IBOutlet UILabel *favEpisodeName;

@property (weak, nonatomic) IBOutlet UILabel *favFirstAired;

@property (weak, nonatomic) IBOutlet UIButton *unfav;

- (IBAction)unfavPressed:(id)sender;


@property (weak, nonatomic) NSString *stringFavSeasonEpisode;
@property (weak, nonatomic) NSString *stringFavEpisodeName;

@property (weak, nonatomic) NSString *stringFavFirstAired;





@end
