//
//  MemeGeneratorCollectionViewController.m
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/19/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import "MemeGeneratorCollectionViewController.h"
#import "MemeGeneratorCollectionViewCell.h"

#import "MemeCreatorViewController.h"

@interface MemeGeneratorCollectionViewController ()

@end

@implementation MemeGeneratorCollectionViewController {

    NSArray *memeImages;
    


}

static NSString * const reuseIdentifier = @"MemeGeneratorCell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //searchBar

    
    
    
    //Initialize image arrray
    
    memeImages = @[@"001.png", @"002.png", @"003.png", @"004.png",
                   @"005.png", @"006.png", @"007.png", @"008.png",
                   @"009.png", @"010.png", @"011.png", @"012.png",
                   @"013.png", @"014.png", @"015.png"];
    
    
    
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"segueToCreateMeme"]) {
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        UINavigationController *destViewController = segue.destinationViewController;
        MemeCreatorViewController *memeGeneratorViewController = (MemeCreatorViewController *) [destViewController.childViewControllers firstObject];
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        memeGeneratorViewController.memeImageName = [memeImages
                                                objectAtIndex:indexPath.row];
        [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
    }
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    

    return memeImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    MemeGeneratorCollectionViewCell *cell = (MemeGeneratorCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell
    cell.memeImageView.image = [UIImage imageNamed:[memeImages objectAtIndex:indexPath.row]];
    
    
    
    return cell;
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
