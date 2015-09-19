//
//  RecipeCollectionViewController.m
//  RecipePhoto
//
//  Created by LaTiesha Caston on 9/18/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import "RecipeCollectionViewController.h"
#import "RecipeCollectionViewCell.h"
#import "RecipeCollectionReusableView.h"
#import "RecipeViewController.h"
#import <Social/Social.h>

@interface RecipeCollectionViewController ()

@end

@implementation RecipeCollectionViewController {


    NSArray *recipeImages;
    BOOL shareEnabled;
    NSMutableArray *selectedRecipes;



}

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes (removed because were already using a prototype cell)
  //  [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Initialize image array
    
   NSArray *mainDishImages = @[@"egg_benedict.jpg", @"full_breakfast.jpg", @"ham_and_cheese_panini.jpg", @"ham_and_egg_sandwich.jpg", @"hamburger.jpg", @"instant_noodle_with_egg.jpg", @"japanese_noodle_with_pork.jpg", @"mushroom_risotto.jpg", @"noodle_with_bbq_pork.jpg", @"thai_shrimp_cake.jpg", @"vegetable_curry.jpg"];
    
  
    
    NSArray *drinkDessertImages = @[@"angry_birds_cake.jpg", @"creme_brelee.jpg", @"green_tea.jpg", @"starbucks_coffee.jpg", @"white_chocolate_donut.jpg"];
    
    
    //the nested array is composed of the two previous arrays
    
    recipeImages = @[mainDishImages, drinkDessertImages];
    
    
    
    //Add Section spacing
    UICollectionViewFlowLayout *collectionViewLayout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
        collectionViewLayout.sectionInset = UIEdgeInsetsMake(20, 0, 20, 0);\
    
    
    selectedRecipes = [NSMutableArray array];
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    
    if ([segue.identifier isEqualToString:@"showRecipePhoto"]) {
    
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        UINavigationController *destViewController = segue.destinationViewController;
        RecipeViewController *recipeViewController = (RecipeViewController *)
        [destViewController.childViewControllers firstObject];
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        recipeViewController.recipeImageName = [recipeImages[indexPath.section]objectAtIndex:indexPath.row];
        [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];   }
    
    

    // Pass the selected object to the new view controller.
}






#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {

    return [recipeImages count];
}







- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    
    //retusn number of items in each section
    
    
    return [[recipeImages objectAtIndex:section] count];
}






- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    RecipeCollectionViewCell *cell = (RecipeCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath: indexPath];
    
    
    
    // Configure the cell
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"photo-frame"]];
    
    //the image inside of the image view is the ui image that lives inside of the section at the indexpath.row
    
    cell.recipeImageView.image = [UIImage imageNamed:[recipeImages[indexPath.section] objectAtIndex:indexPath.row]];
    
    
    //setting the selected state
    
    cell.selectedBackgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"photo-frame-selected"]];
    
    
    return cell;   }




- (UICollectionReusableView *) collectionView: (UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {


    UICollectionReusableView *reusableview = nil;
    
    //determine if the collection view asks for a footer or header
    
    if (kind == UICollectionElementKindSectionHeader) {
    
    
        RecipeCollectionReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
        
        NSString *title = [[NSString alloc] initWithFormat: @"RecipeGroup #%ld", indexPath.section + 1];
        
        headerView.titleLabel.text = title;
    
        reusableview = headerView;
    
    }

    if (kind == UICollectionElementKindSectionFooter) {
        
        
        RecipeCollectionReusableView *footerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"FooterView" forIndexPath:indexPath];
        
        
        
        reusableview = footerView;
        
    }
    
    return reusableview;


}




- (IBAction)shareButtonTapped:(id)sender {

    
    if (shareEnabled) {
    
    
    //post selected recipes to Facebook
        
        
        if ([selectedRecipes count] > 0 ) {
    
    
            if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
                
                SLComposeViewController *controller  = [SLComposeViewController composeViewControllerForServiceType: SLServiceTypeFacebook];
                
                [controller setInitialText:@"Check out my recipes!"];
                for (NSString *recipePhoto in selectedRecipes) {
                    [controller addImage:[UIImage imageNamed:recipePhoto]];
                
                
                
                }
            
                [self presentViewController:controller animated:YES completion:nil];
            
            
            }
    
        }
    
//Delect all selected items
        for (NSIndexPath *indexPath in self.collectionView.indexPathsForSelectedItems) {
        
            [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
        
        
        }

        //Remove all items from selectedRecipes array
        [selectedRecipes removeAllObjects];
        
        
        //Change the sharing move to NO
        shareEnabled = NO;
        self.collectionView.allowsMultipleSelection = NO;
        self.shareButton.title = @"Share";
        [self.shareButton setStyle:UIBarButtonItemStylePlain];
        
    }  else
    {
     //Change shareEnabled to Yes and change the button text to upload
        shareEnabled = YES;
        self.collectionView.allowsMultipleSelection = YES;
        self.shareButton.title = @"Upload";
        [self.shareButton setStyle:UIBarButtonItemStyleDone];
        
        
        
    }
    
    
    
    
}




- (void) collectionView: (UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    if (shareEnabled) {
        
        
        //Determine the selected items by using the indexPath
        NSString *selectedRecipe = [recipeImages[indexPath.section]objectAtIndex:indexPath.row];
        //Add the selected item into the array
        [selectedRecipes addObject:selectedRecipe];
        
        
    }   }



- (void) collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {


    if (shareEnabled) {
    
        NSString *deSelectedRecipe  = [recipeImages[indexPath.section]objectAtIndex:indexPath.row];
        [selectedRecipes removeObject:deSelectedRecipe];
    
    }

}





- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {


    if (shareEnabled) {
    
        return NO;
        
    } else {
    
        return YES;
    
    }




}






#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/



@end


