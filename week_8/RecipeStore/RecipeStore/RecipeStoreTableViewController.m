//
//  RecipeStoreTableViewController.m
//  RecipeStore
//
//  Created by LaTiesha Caston on 10/3/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "RecipeStoreTableViewController.h"
#import "AppDelegate.h"
#import "Recipe.h"
#import "AddRecipeViewController.h"

@interface RecipeStoreTableViewController ()

@end

@implementation RecipeStoreTableViewController {


    NSFetchedResultsController *fetchResultsController;
    NSArray *recipes;



}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] initWithEntityName:@"Recipe"];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES];
    
    fetchRequest.sortDescriptors = @[sortDescriptor];
    
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *managedObjectContext = [appDelegate managedObjectContext];
    
    if (managedObjectContext != nil) {
    
        fetchResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:managedObjectContext sectionNameKeyPath:nil cacheName:nil];
        fetchResultsController.delegate = self;
        
        NSError *error;
        
        if ([fetchResultsController performFetch:&error]) {
            recipes = fetchResultsController.fetchedObjects;
            
        } else {
        
            NSLog(@"Cant get the record! %@ %@", error, [error localizedDescription]);
        }
    
    }
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {

    return YES;

}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {

//Delete the row from the data source
    
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *managedObjectContext = [appDelegate managedObjectContext];
    
    
    if (managedObjectContext != nil) {
    
    
        Recipe *recipeToDelete = (Recipe *)[fetchResultsController objectAtIndexPath:indexPath];
        [managedObjectContext deleteObject:recipeToDelete];
        
        NSError *error;
        
        if (![managedObjectContext save:&error]) {
            NSLog(@"Can't delete the record! %@ %@", error, [error localizedDescription]);
        }
    
    }

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [recipes count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    Recipe *recipe = (Recipe *)recipes[indexPath.row];
    cell.textLabel.text = recipe.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ - %@", recipe.image, recipe.prepTime];
    
    
    return cell;
}



- (void) controllerWillChangeContent:(NSFetchedResultsController *)controller {
    [self.tableView beginUpdates];
}


-(void) controller:(NSFetchedResultsController *)controller didChangeObject:(nonnull id)anObject atIndexPath:(nullable NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type newIndexPath:(nullable NSIndexPath *)newIndexPath {

    switch (type) {
    
        case NSFetchedResultsChangeInsert:
            [self.tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
        case NSFetchedResultsChangeDelete:
            [self.tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
            
        case NSFetchedResultsChangeUpdate:
            [self.tableView insertRowsAtIndexPaths:@[newIndexPath] withRowAnimation:UITableViewRowAnimationFade];
            break;
            
            
        default:
            [self.tableView reloadData];
            break;
    
    }

    recipes = controller.fetchedObjects;

}


- (void) controllerDidChangeContent:(NSFetchedResultsController *)controller {
    [self.tableView endUpdates];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([[segue identifier] isEqualToString:@"UpdateRecipe"]) {
    
        Recipe *selectedRecipe = [recipes objectAtIndex:[[self.tableView indexPathForSelectedRow]row]];
        
        UINavigationController *destViewController = segue.destinationViewController;
        AddRecipeViewController *recipeViewController = (AddRecipeViewController *)destViewController.topViewController;
        recipeViewController.selectedRecipe = selectedRecipe; 
    
    
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





@end
