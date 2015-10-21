//
//  FavoritesTableViewCell.m
//  FreshPrince
//
//  Created by LaTiesha Caston on 10/21/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "FavoritesTableViewCell.h"
#import "FavoritesTableViewController.h"

@implementation FavoritesTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)unfavPressed:(id)sender {
    
    NSUserDefaults *favorites = [NSUserDefaults standardUserDefaults];
    
    [favorites removeObjectForKey:@"Season and Episode"];
    
    [favorites removeObjectForKey:@"Episode Name"];
    
    [favorites removeObjectForKey:@"air Date"];
    
    
    
    
}
@end
