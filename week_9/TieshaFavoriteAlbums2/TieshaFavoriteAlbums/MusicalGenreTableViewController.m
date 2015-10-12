//
//  MusicalGenreTableViewController.m
//  TieshaFavoriteAlbums
//
//  Created by LaTiesha Caston on 10/11/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "MusicalGenreTableViewController.h"
#import "MusicalGenreTableViewCell.h"
#import "MusicalGenreWebViewController.h"

@interface MusicalGenreTableViewController ()

@end

@implementation MusicalGenreTableViewController
{


    NSArray *genres;
    NSArray *wikiUrls;


}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    genres = @[@"HIP HOP", @"R&B", @"ACID JAZZ", @"NEO-SOUL", @"CRUNK", @"TRIP HOP", @"ALTERNATIVE R&B", @"EXPERIMENTAL", @"SOUL", @"PSYCHEDELIC ROCK"];
    wikiUrls = @[@"https://en.m.wikipedia.org/wiki/Hip_hop",
                 @"https://en.m.wikipedia.org/wiki/R_%26_B",
                 @"https://en.m.wikipedia.org/wiki/Acid_jazz",
                 @"https://en.m.wikipedia.org/wiki/Neo_soul",
                 @"https://en.m.wikipedia.org/wiki/Crunk",
                 @"https://en.m.wikipedia.org/wiki/Trip_hop",
                 @"https://en.m.wikipedia.org/wiki/PBR%26B",
                 @"https://en.m.wikipedia.org/wiki/Experimental_music",
                 @"https://en.m.wikipedia.org/wiki/Soul_music",
                 @"https://en.m.wikipedia.org/wiki/Psychedelic_rock"];
    
    
  //  UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Eminem_background.png"]];
    
   // self.tableView.backgroundView = imageView;
    self.tableView.backgroundColor = [UIColor blackColor];
    
    
    
     self.tableView.separatorColor = [UIColor clearColor];
    // self.tableView.backgroundColor = [UIColor clearColor];
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return genres.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    MusicalGenreTableViewCell *cell = (MusicalGenreTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
     cell.genreNameLabel.text = [genres objectAtIndex:indexPath.row ];
    
    cell.backgroundColor = [UIColor clearColor];
    
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor clearColor];
    [cell setSelectedBackgroundView:bgColorView];
    
    return cell;
    
    
    
    
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    
    
    // Get the new view controller using [segue destinationViewController]
    
    if ([segue.identifier isEqualToString:@"showGenreWebView"] ) {
    
    
        MusicalGenreWebViewController *musicalgenrewebviewcontroller = [[MusicalGenreWebViewController alloc] init];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        musicalgenrewebviewcontroller = segue.destinationViewController;
        
        // Pass the selected object to the new view controller.
        
        
        
        musicalgenrewebviewcontroller.URLString = [wikiUrls objectAtIndex:indexPath.row];
        
        NSLog(@"%@", musicalgenrewebviewcontroller.URLString);

        
        
        
                                                              }

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
