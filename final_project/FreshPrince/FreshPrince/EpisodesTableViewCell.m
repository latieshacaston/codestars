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


@implementation EpisodesTableViewCell {

    BOOL gottadefault;

}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)favPressed:(id)sender {
        NSUserDefaults *favorites = [NSUserDefaults standardUserDefaults];
    
    [self.favButton setImage:[UIImage imageNamed:@"Pause_Button.png"]
                     forState:UIControlStateSelected];
    
    
    if (!gottadefault) {
    

    
    [favorites setValue:self.seasonEpisode.text forKey:@"Season and Episode"];
    
    [favorites setValue:self.episodeName.text forKey:@"Episode Name"];
    
    [favorites setValue:self.firstAired.text forKey:@"air Date"];
    
        gottadefault = YES; } else {
        
          
            
            [favorites setValue:self.seasonEpisode.text forKey:@"Season and Episode"];
            
            [favorites setValue:self.episodeName.text forKey:@"Episode Name"];
            
            [favorites setValue:self.firstAired.text forKey:@"air Date"];
        
        }
    
    
}
@end
