//
//  EpisodesTableViewCell.h
//  FreshPrince
//
//  Created by LaTiesha Caston on 10/21/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FavoritesTableViewController.h"

@interface EpisodesTableViewCell : UITableViewCell


@property (nonatomic, weak) FavoritesTableViewController *favetableviewcontroller;

@property (weak, nonatomic) IBOutlet UILabel *seasonEpisode;


@property (weak, nonatomic) IBOutlet UILabel *episodeName;

@property (weak, nonatomic) IBOutlet UILabel *firstAired;

@property (weak, nonatomic) IBOutlet UIButton *favButton;



- (IBAction)favPressed:(id)sender;



@end
