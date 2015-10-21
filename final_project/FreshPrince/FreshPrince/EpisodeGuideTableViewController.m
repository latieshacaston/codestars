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



}

- (void)viewDidLoad {
    [super viewDidLoad];
    

    // Add sections later
    
    seasonsAndEpisodes = @[@"S01E01", @"S01E02", @"S01E03"];
    
    
    episodeNames = @[@"Pilot", @"Bang the Drum, Ashley", @"Clubba Hubba"];
    
    
    airDates = @[@"September 10, 1990", @"September 17, 1990", @"September 24, 1990"];
    
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return seasonsAndEpisodes.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   EpisodesTableViewCell *cell = (EpisodesTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"episodeGuideCell"forIndexPath:indexPath];
    
    cell.seasonEpisode.text = [seasonsAndEpisodes objectAtIndex:indexPath.row];
    
    cell.episodeName.text = [episodeNames objectAtIndex:indexPath.row];
    
    cell.firstAired.text = [airDates objectAtIndex:indexPath.row];
    
    
    
    return cell;
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
