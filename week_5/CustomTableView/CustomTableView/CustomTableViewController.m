//
//  CustomTableViewController.m
//  CustomTableView
//
//  Created by new on 8/25/15.
//  Copyright (c) 2015 new. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"

@implementation CustomTableViewController


{

    NSMutableArray *recipeNames;
    NSArray *recipeImages;
    NSArray *prepTime;
    BOOL recipeChecked[16];
}





- (void) viewDidLoad {


    [super viewDidLoad];
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"recipes" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    recipeNames = [dict objectForKey:@"Name"];
    recipeImages = [dict objectForKey:@"Image"];
    prepTime = [dict objectForKey:@"PrepTime"];


}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {



    return [recipeNames count];



}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {


static NSString *cellIdentifier = @"Cell";    
    //changing the code to say use our CustomTableViewCell instead of the default UITableViewCell
    
CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
  
    // using the properties from CustomTableViewCell header (nameLabel and thumbnailImageView) to redefine what a cell and an image is
    
    cell.nameLabel.text = [recipeNames objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
    cell.prepTimeLabel.text = [prepTime objectAtIndex:indexPath.row];
    
    if (recipeChecked[indexPath.row]) {
    
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
        
    } else {
    
        cell.accessoryType = UITableViewCellAccessoryNone;
    
    
    }
    
    
    
    
    
    return cell;



}


//
//-(void) tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
//
//
//   
//    
//    
//    NSString *selectedRecipe = [recipeNames objectAtIndex:indexPath.row];
//    
//    //code for the message alert
//    
//    UIAlertView *messageAlert = [[UIAlertView alloc] initWithTitle:@"Row Selected" message:selectedRecipe delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil ];
//    
//    
//    
//    [messageAlert show];
//    
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    
//    if (recipeChecked[indexPath.row] == YES) {
//        
//        
//        cell.accessoryType = UITableViewCellAccessoryNone;
//        
//        
//        
//    }
//    
//    else {
//    
//    cell.accessoryType = UITableViewCellAccessoryCheckmark;
//    recipeChecked[indexPath.row] = YES;
//    
//    }
//    
//    
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    
//    
//  
//}

// Deletion method
-(void) tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {

    //remove the object
    
    [recipeNames removeObjectAtIndex:indexPath.row];

    // Delete the row with that nice animation
    [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];


}





//    recipeNames = [NSMutableArray arrayWithObjects: @"Eggs Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle With Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", @"Creme Brelee", @"White Chocolate Donut", nil ];
//
//    recipeImages = @[@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg", @"instant_noodle_with_egg.jpg" ,@"noodle_with_bbq_pork.jpg", @"japanese_noodle_with_pork.jpg" ,@"green_tea.jpg", @"thai_shrimp_cake.jpg", @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg",@"creme_brelee.jpg", @"white_chocolate_donut.jpg" ];
//
//    prepTime = @[@"1 minute", @"2 minutes", @"20 minutes",@"45 minutes",@"barista just hands it to you, I mean...",@"5 minutes",@"30 secons",@"hours",@"40 years",@7,@"wtf",@"anothertime",@"200 minutes",@"665 minutes",@"34 minutes", ];





@end
