//
//  AddRecipeViewController.m
//  RecipeStore
//
//  Created by LaTiesha Caston on 10/3/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "AddRecipeViewController.h"
#import "AppDelegate.h"

@interface AddRecipeViewController ()

@end

@implementation AddRecipeViewController {


    Recipe *recipe;



}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    if (self.selectedRecipe) {
    
        self.nameTextField.text = self.selectedRecipe.name;
        self.imageTextField.text = self.selectedRecipe.image;
        self.prepTimeTextField.text = self.selectedRecipe.prepTime;
    
    
    
    
    }
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)save:(id)sender {
    
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    NSManagedObjectContext *managedObjectContext = [appDelegate managedObjectContext];
    
    if (self.selectedRecipe) {
    
        recipe = self.selectedRecipe;
    
    } else {
    
    
        recipe = (Recipe *)[NSEntityDescription insertNewObjectForEntityForName:@"Recipe" inManagedObjectContext:managedObjectContext]; }
    
    
    recipe.name = self.nameTextField.text;
    recipe.image = self.imageTextField.text;
    recipe.prepTime = self.prepTimeTextField.text;
    
    NSError *error;
    if (![managedObjectContext save:&error]) {

        NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)cancel:(id)sender {
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    
}
@end
