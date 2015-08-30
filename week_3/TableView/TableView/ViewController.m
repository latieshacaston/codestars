//
//  ViewController.m
//  TableView
//
//  Created by LaTiesha Caston on 8/21/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


{


    NSArray *recipes;


}


- (NSInteger) tableView:(UITableView *)tableView
  numberOfRowsInSection: (NSInteger) section {



    return [recipes count];


}



- (UITableViewCell *) tableView: (UITableView *)tableView
          cellForRowAtIndexPath: (NSIndexPath *)indexPath {


static NSString *cellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    
    
    cell.imageView.image = [UIImage imageNamed:@"creme_brelee"];
    
    
    return cell;




}






- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Initialize table data
    
    recipes = @[@"Eggs Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwhich", @"Creme Brulee",
                @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
