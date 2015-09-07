//
//  CustomTableTableViewController.m
//  
//
//  Created by LaTiesha Caston on 9/6/15.
//
//

#import "CustomTableTableViewController.h"
#import "CustomTableViewCell.h"
#import "DetailViewController.h"

@interface CustomTableTableViewController ()

@end

@implementation CustomTableTableViewController


{
    
    NSArray *regions;
    NSArray *regionImages;
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    regions = @[@"The North", @"The Iron Islands", @"The Riverlands", @"The Vale of Arryn", @"The Westerlands", @"The Crownlands", @"The Reach", @"The Stormlands", @"Dorne", @"Beyond The Wall"];
    
    
    regionImages = @[@"The_North_Table.png", @"The_Iron_Islands.png", @"The_Riverlands.png", @"The_Eyrie.png", @"The_Westerlands.png", @"The_Crownlands.png", @"The_Reach.png", @"The_Stormlands.png", @"Dorne.png", @"The_Wall.png" ];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}





-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section

{
    
    return [regions count];
    
}

- (UITableViewCell *)tableView: (UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    
    cell.regionName.text = [regions objectAtIndex:indexPath.row ];
    cell.regionImage.image = [UIImage imageNamed:[regionImages objectAtIndex:indexPath.row]];
    
    
    
    return cell;
    
    
    
    
}



 
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 
     // Get the new view controller using [segue destinationViewController]
     
     if ([segue.identifier isEqualToString:@"showRegionDetail"] ) {
     
         NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
         DetailViewController *destViewController = segue.destinationViewController;
         
         // Pass the selected object to the new view controller.

         
         destViewController.stringRegionName = [regions objectAtIndex:indexPath.row];
         
         
        // UIIm *detailViewofRegion = [UIImage imageNamed:[regionImages objectAtIndex:indexPath.row]];
         
         destViewController.justDetailImage = [UIImage imageNamed:[regionImages objectAtIndex:indexPath.row]];
     
     
     
     }
     
     
     
 // Pass the selected object to the new view controller.
 }
 





@end


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

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

