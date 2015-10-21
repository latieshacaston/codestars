//
//  EpisodesTableViewCell.m
//  FreshPrince
//
//  Created by LaTiesha Caston on 10/21/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "EpisodesTableViewCell.h"
#import "FavoritesTableViewCell.h"
#import "EpisodeGuideTableViewController.h"
#import "FavoritesTableViewController.h"


@implementation EpisodesTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)favPressed:(id)sender {
    
    
    
    FavoritesTableViewCell *FavTableViewController = [[FavoritesTableViewCell alloc] init];
    
    
    FavTableViewController.stringFavEpisodeName = self.episodeName.text;
    FavTableViewController.stringFavSeasonEpisode = self.seasonEpisode.text;
    FavTableViewController.stringFavFirstAired = self.firstAired.text;
    
    NSLog(@"%@ is the episode name on the episodes table", self.episodeName.text);
    NSLog(@"%@ is the episode name being passed to a string in the Fav Cell", FavTableViewController.stringFavEpisodeName);
    
    FavoritesTableViewController *favtabviewcontroller = [[FavoritesTableViewController alloc] init];
    
    favtabviewcontroller.favSeasonEpisodeArray = [[NSMutableArray alloc] init];
    favtabviewcontroller.favEpisodeNameArray = [[NSMutableArray alloc] init];
    favtabviewcontroller.favFirstAiredArray = [[NSMutableArray alloc] init];

    
    [favtabviewcontroller.favSeasonEpisodeArray addObject:FavTableViewController.stringFavSeasonEpisode];
    

    
    
    [favtabviewcontroller.favEpisodeNameArray addObject:FavTableViewController.stringFavEpisodeName];
    [favtabviewcontroller.favEpisodeNameArray addObject:FavTableViewController.stringFavFirstAired];
    
    

    
    
    
    
    NSLog(@"%@ is the episode being passed into the mutable array", favtabviewcontroller.favEpisodeNameArray);
    

    
}
@end
