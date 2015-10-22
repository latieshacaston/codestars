//
//  EpisodeGuideTableViewController.m
//  FreshPrince
//
//  Created by LaTiesha Caston on 10/21/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "EpisodeGuideTableViewController.h"
#import "EpisodesTableViewCell.h"
#import "FavoritesTableViewController.h"
#import "FavoritesTableViewCell.h"

@interface EpisodeGuideTableViewController ()

@end

@implementation EpisodeGuideTableViewController {



    NSArray *seasonsAndEpisodes;
    NSArray *episodeNames;
    NSArray *airDates;

    NSArray *searchResults;
    


}

- (void)viewDidLoad {
    [super viewDidLoad];
    

    
    seasonsAndEpisodes = @[@"S01E01", @"S01E02", @"S01E03", @"S01E04", @"S01E05",
                           @"S01E06", @"S01E07", @"S01E08", @"S01E09", @"S01E10",
                           @"S01E11", @"S01E12", @"S01E13", @"S01E14", @"S01E15",
                           @"S01E16", @"S01E17", @"S01E18", @"S01E19", @"S01E20",
                           @"S01E21", @"S01E22", @"S01E23", @"S01E24", @"S01E25"];
    
    
    episodeNames = @[@"Pilot", @"Bang the Drum, Ashley", @"Clubba Hubba", @"Not with My Pig, You Don't", @"Homeboy, Sweet Homeboy",
                     @"Mistaken Identity", @"Def Poet's Society", @"Someday Your Prince Will Be in Effect (Part 1)", @"Someday Your Prince Will Be in Effect (Part 2)", @"Kiss My Butler",
                     @"Courting Disaster", @"Talking Turkey", @"Knowledge is Power", @"Day Damn One", @"Deck the Halls",
                     @"Lucky Charm", @"The Ethnic Tip", @"The Young and the Restless", @"It Had to Be You", @"Nice Lady",
                     @"Love at First Fight", @"Banks Shot", @"72 Hours", @"Just Infatuation", @"Working It Out"];
    
    
    airDates = @[@"September 10, 1990", @"September 17, 1990", @"September 24, 1990", @"October 1, 1990", @"October 8, 1990",
                 @"October 15, 1990", @"October 22, 1990", @"October 29, 1990", @"October 29, 1990", @"November 5, 1990",
                 @"November 12, 1990", @"November 19, 1990", @"November 26, 1990", @"December 3, 1990", @"December 10, 1990",
                 @"January 7, 1991", @"January 14, 1991", @"January 21, 1991", @"February 4, 1991", @"February 11, 1991",
                 @"February 18, 1991", @"February 25, 1991", @"March 11, 1991", @"April 29, 1991", @"May 6, 1991"];
   
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}






- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {




    return seasonsAndEpisodes.count;


}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   EpisodesTableViewCell *cell = (EpisodesTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"episodeGuideCell"forIndexPath:indexPath];
    
    
    
    
    
    cell.seasonEpisode.text = [seasonsAndEpisodes objectAtIndex:indexPath.row];
    
    cell.episodeName.text = [episodeNames objectAtIndex:indexPath.row];
    
    cell.firstAired.text = [airDates objectAtIndex:indexPath.row];
    
    
    
    
    
    
    return cell;
}


- (IBAction)unwindToEpisodeGuide:(UIStoryboardSegue *)unwindSegue {
    
    
    
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/




    
    
    



@end
