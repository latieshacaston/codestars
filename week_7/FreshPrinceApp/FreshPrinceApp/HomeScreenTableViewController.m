//
//  HomeScreenTableViewController.m
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/19/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import "HomeScreenTableViewController.h"
#import "HomePageTableViewCell.h"

@interface HomeScreenTableViewController ()

@end

@implementation HomeScreenTableViewController


{
    UISearchController *searchController;

    NSArray *features;
    NSArray *memeImages;
 //   NSArray *homeScreenCellBackgroundImages;

    // NSArray *quizQuestions;
    
    // Lets Go Get Some BBQ and Get Busy, Hurry up and write your number down befoer i dont want it no more,
    
    //NSArray *quizVideos;

}





- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    features = @[@"Take the Fresh Prince Quote Quiz!", @"Make a fresh meme!"];

    
    
    searchController = [[UISearchController alloc] initWithSearchResultsController:nil];
    [searchController.searchBar sizeToFit];
   self.tableView.tableHeaderView  = searchController.searchBar;
//    self.definesPresentationContext = YES;
// 
    
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
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {


            return [features count];
       
    

  
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"homeScreenCell";
    
   
    HomePageTableViewCell *cell = (HomePageTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    
    cell.homeScreenTextLabel.text = [features objectAtIndex:indexPath.row ];
    
    
    return cell;
    
    
    
    

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0 )  {
        [self performSegueWithIdentifier:@"segueToQuiz" sender:self];
    } else if (indexPath.row == 1) {
        [self performSegueWithIdentifier:@"segueToMemeGenerator" sender:self];
    }
}

//- (void)filterContentForSearchText:(NSString *)searchText {
//    NSPredicate *resultPredicate = [NSPredicate predicateWithFormat:@"name contains[c] %@", searchText];
//    searchResults = [features filteredArrayUsingPredicate:resultPredicate]; }
//
// Couldnt get this to work in time



//- (void) updateSearchResultsForSearchController:(UISearchController *)searchController {
//    [self filterContentForSearchText:searchController.searchBar.text];
//    [self.tableView reloadData];
//}
//
//





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
