//
//  FavoritesTableViewController.m
//  FreshPrince
//
//  Created by LaTiesha Caston on 10/21/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "FavoritesTableViewController.h"
#import "FavoritesTableViewCell.h"
#import "EpisodesTableViewCell.h"
#import "EpisodeGuideTableViewController.h"

@interface FavoritesTableViewController ()

@end

@implementation FavoritesTableViewController {

    NSMutableArray *finalFaveEpisodeNumbers;
    NSMutableArray *finalFaveEpisodeNames;
    NSMutableArray *finalFaveEpisodeAirDates;



}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    NSUserDefaults *favorites = [NSUserDefaults standardUserDefaults];
    
finalFaveEpisodeNumbers = [[NSMutableArray alloc] init];
    finalFaveEpisodeNames = [[NSMutableArray alloc] init];
    finalFaveEpisodeAirDates = [[NSMutableArray alloc] init];
    
    [ finalFaveEpisodeNumbers addObject:[favorites objectForKey:@"Season and Episode"]];
    
    NSLog(@"%@", finalFaveEpisodeNumbers);
    
    [finalFaveEpisodeNames addObject:[favorites objectForKey:@"Episode Name"]];
    [finalFaveEpisodeAirDates addObject:[favorites objectForKey:@"air Date"]];
    
    

    NSLog (@"%@", finalFaveEpisodeNames);
 

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   return finalFaveEpisodeNames.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  
    
    
    FavoritesTableViewCell *cell = (FavoritesTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"favoritesCell"forIndexPath:indexPath];
    
    cell.favSeasonEpisode.text = [finalFaveEpisodeNumbers objectAtIndex:indexPath.row];
    
    cell.favEpisodeName.text = [finalFaveEpisodeNames objectAtIndex:indexPath.row];
    
    cell.favFirstAired.text = [finalFaveEpisodeAirDates objectAtIndex:indexPath.row];
    
    
    
    
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
