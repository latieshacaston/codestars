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
    
    
    NSUserDefaults *favorites = [NSUserDefaults standardUserDefaults];
    
    [favorites setValue:self.seasonEpisode.text forKey:@"Season and Episode"];
    
    [favorites setValue:self.episodeName.text forKey:@"Episode Name"];
    
    [favorites setValue:self.firstAired.text forKey:@"air Date"];
    
    
//    FavoritesTableViewController *favetableviewcontroller = [[FavoritesTableViewController alloc] init];
//    
//    favetableviewcontroller.passMeTheSeasonAndDateArray = [[NSMutableArray alloc] init];
//    favetableviewcontroller.passMeTheFavEpisodeNameArray = [[NSMutableArray alloc] init];
//    
//    favetableviewcontroller.passMeTheAirDateArray = [[NSMutableArray alloc] init];
//    
//    
//    [favetableviewcontroller.passMeTheAirDateArray addObject:self.firstAired.text];
//    
//    [favetableviewcontroller.passMeTheSeasonAndDateArray addObject:self.seasonEpisode.text];
//    
//    [favetableviewcontroller.passMeTheFavEpisodeNameArray addObject:self.episodeName.text];
    
   // NSLog(@"%@", favetableviewcontroller.passMeTheFavEpisodeNameArray);
    
    
    
  
//    favetableviewcontroller.stringFavEpisodeName = self.episodeName.text;
//    
//    NSLog (@"%@", favetableviewcontroller.stringFavEpisodeName);
//    
//    NSLog(@"%@", self.episodeName.text); 
//    
//    
//    favetableviewcontroller.stringFavSeasonEpisode = self.seasonEpisode.text;
//    
//    favetableviewcontroller.stringFavFirstAired = self.firstAired.text;
    
    
//    
//    
//     self.episodeName.text = favetableviewcontroller.stringFavEpisodeName;
//    
//       self.seasonEpisode.text =  favetableviewcontroller.stringFavSeasonEpisode;
//    
//        self.firstAired.text = favetableviewcontroller.stringFavFirstAired;
    
    
    
//     NSLog(@"%@ is the episode being passed into the mutable array", favtabviewcontroller.favEpisodeNameArray);
    

    
}
@end
