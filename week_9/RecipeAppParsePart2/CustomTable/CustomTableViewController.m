//
//  CustomTableViewController.m
//  CustomTable
//
//  Created by Simon Ng on 23/10/14.
//  Copyright (c) 2014 AppCoda. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"
#import "DetailViewController.h"
#import <Parse/Parse.h>
#import <ParseUI/PFImageView.h>

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController
{
    NSArray *recipes;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector (refreshTable:)
                                                 name:@"refreshTable"
                                               object:nil];
    
    
    
}


- (void) refreshTable: (NSNotification *) notification {


//Reload the recipes
    [self loadObjects];

}

- (void)viewDidUnload {


    [super viewDidUnload];
    
    //release any retained subviews of the main view
    [[NSNotificationCenter defaultCenter]removeObserver:self name:@"refreshTable" object:nil];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    // Return the number of sections.
//    return 1;
//}
//
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return [recipes count];
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *cellIdentifier = @"Cell";
//    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
//    
//    Recipe *recipe = [recipes objectAtIndex:indexPath.row];
//    cell.nameLabel.text = recipe.name;
//    cell.thumbnailImageView.image = [UIImage imageNamed:recipe.image];
//    cell.prepTimeLabel.text = recipe.prepTime;
//    
//    return cell;
//}

- (id)initWithCoder:(NSCoder *)aCoder
{
    self = [super initWithCoder:aCoder];
    if (self) {
        // The className to query on
        self.parseClassName = @"Recipe";
        
        // The key of the PFObject to display in the label of the default cell style
        self.textKey = @"name";
        
        // Whether the built-in pull-to-refresh is enabled
        self.pullToRefreshEnabled = YES;
        
        // Whether the built-in pagination is enabled
        self.paginationEnabled = NO;
//        self.objectsPerPage = 10;
    }
    return self;
}

- (PFQuery *)queryForTable
{
    PFQuery *query = [PFQuery queryWithClassName:self.parseClassName];
    query.cachePolicy = kPFCachePolicyCacheThenNetwork;
    
    return query;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath object:(PFObject *)object
{
    static NSString *CellIdentifier = @"Cell";
    
    CustomTableViewCell *cell = (CustomTableViewCell *)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell
    PFFile *thumbnail = [object objectForKey:@"image"];
    PFImageView *thumbnailImageView = (PFImageView*)cell.thumbnailImageView;
    thumbnailImageView.image = [UIImage imageNamed:@"placeholder.jpg"];
    thumbnailImageView.file = thumbnail;
    [thumbnailImageView loadInBackground];
    
    cell.nameLabel.text = [object objectForKey:@"name"];
    cell.prepTimeLabel.text = [object objectForKey:@"prepTime"];
    
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showRecipeDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        DetailViewController *destViewController = segue.destinationViewController;
        
        //Recipe *recipe = [recipes objectAtIndex:indexPath.row];
        PFObject *recipePFObject = [self objectAtIndexPath:indexPath];
        destViewController.recipe = recipePFObject;
    }
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Remove the row from data model
    PFObject *object = [self.objects objectAtIndex:indexPath.row];
    [object deleteInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        [self refreshTable:nil];
    }];
}



@end
