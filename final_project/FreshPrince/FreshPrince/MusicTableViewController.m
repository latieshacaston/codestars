//
//  MusicTableViewController.m
//  FreshPrince
//
//  Created by LaTiesha Caston on 10/20/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "MusicTableViewController.h"
#import "MusicTableViewCell.h"
#import <Spotify/Spotify.h>
#import <AVFoundation/AVFoundation.h>

@interface MusicTableViewController ()
{
    AVAudioPlayer *_audioPlayer;
    
    NSArray *artistsNames;
    NSArray *songTitles;
    
    
    
    
}



@end

@implementation MusicTableViewController


- (void)viewDidLoad {
    [super viewDidLoad];

   
    
    artistsNames = @[@"Brandy", @"The Fresh Prince", @"The Fresh Prince & Jazzy Jeff"];
    songTitles = @[@"I Wanna Be Down", @"Theme Song", @"Parent's Just Dont Understand"];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return songTitles.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    
    static NSString *cellIdentifier = @"Cell";
    MusicTableViewCell *cell = (MusicTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    
    
    cell.artistName.text = [artistsNames objectAtIndex:indexPath.row];
    cell.songTitle.text = [songTitles objectAtIndex:indexPath.row]; 
    
    cell.stringSongTitle = cell.songTitle.text;
    
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


- (void)viewWillAppear:(BOOL)animated {
    
    self.navigationController.navigationBarHidden = NO;
    
}



@end
