//
//  AlbumCollectionViewController.m
//  TieshaFavoriteAlbums
//
//  Created by LaTiesha Caston on 10/4/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "AlbumCollectionViewController.h"
#import "AlbumCollectionViewCell.h"
#import "AlbumDetailViewController.h"

@interface AlbumCollectionViewController ()

@end

@implementation AlbumCollectionViewController {


    NSArray *albumImages;
    NSArray *backgroundImages;
    NSArray *artistNames;
    NSArray *albumNames;
    NSArray *descriptions;
    NSArray *favoriteSongs;


}

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
  
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//   [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    
   albumImages = @[@"14KT_Nowlataz.png", @"Blu&Exile_BelowTheHeavens.png", @"Eminem_MMLP.png", @"ErykahBadu_MamasGun.png", @"JDavey_BeautyInDistortion.png", @"Kelis_Wanderland.png", @"LittleDragon_LittleDragon.png", @"MosDef_BlackOnBothSides.png", @"Outkast_Aquemini.png", @"TheForeignExchange_Connected.png"];
    
    backgroundImages = @[@"14KT_background.png", @"Blu&Exile_background.png", @"Eminem_background.png", @"Badu_background.png", @"JDavey_background.png", @"Kelis_background.png", @"LittleDragon_background.png", @"MosDef__background.png", @"OutKast_background.png", @"ForeignExchange_background.png"];
    
    artistNames = @[@"14KT", @"Blu & Exile", @"Eminem", @"Erykah Badu", @"J*Davey", @"Kelis", @"Little Dragon", @"Mos Def", @"OutKast", @"The Foreign Exchange"];
    
    albumNames = @[@"Nowalataz", @"Below The Heavens", @"The Marshall Mathers LP", @"Mama's Gun", @"The Beauty in Distortion", @"Wanderland", @"Little Dragon", @"Black on Both Sides", @"Aquemini", @"Connected" ];
    
    descriptions = @[@"The tracks on this instrumental album are drop dead gorgeous. My best friend were both hooked on this album for months and he would come over to chill and we'd listen to it together. Still a favorite. ",
                     @"I was at the height of my \"backpacker\" phase, I had my own radio show at college and I played a song from this album every week. Im not an elitist anymore, but this album still blows me away.",
                     @"I used to be a HUGE Eminem stan. 12-year-old me had this entire album memorized cover to cover, including the skits. 25-year-old me actually go to visit The Shelter in Detroit. 27-year-old me misses the old 'Em.",
                     @"Erykah Badu is my favorite singer, and this is my favorite album of hers. This was a hard choice, but I choose this one because it stirs alot of emotions. And after seeing her perform an interpreative dance to \"Green Eyes\", I was forever changed.",
                       @"Wow...this album. This album is part of my DNA. This is one of my coming of age albums. J*Davey are among my favorites and are probably the only duo as consistently great as OutKast. I could go on and on about this one...",
                     @"In HS, I discovered The Neptunes and Kelis and became absolutely obsessed. Its hard to believe this album is 14 years old and we still havent caught up to it.",
                     @"I dont remember when I first heard Little Dragon's music but 3 albums ever they still consistantly release beautiful music. A Little Dragon show was the first thing I did 2 days after moving to NYC, my friends were all there and it was the beginning of a new chapter. Fitting. ",
                     @" For years I didnt give NYC rap credit because they were the city that booed OutKast at the Source Awards. BOBS helped clear up some of that resentment for me and it gave me the song I want to walk the aisle to: \"May-December\"",
                     @"Not enough words to even begin to explain how much I love them. Legends. Kings. The greatest duo to ever do it. I feel like I am forever in their debt for everything theyve done. Though all of their albums are flawless, this is my favorite",
                     @"Phonte and Nicolay recorded this album without having ever met each other. Phonte was from another favorite group, Little Brother, and Nicolay is a really dope producer from the Netherlands. And when they come together, its beautiful. "];
    
    
    favoriteSongs = @[@"\"Without\"",
                      @"\"Dancin In The Rain\"",
                      @"\"Criminal\"",
                      @"\"Penitentiary Philosophy\"",
                      @"\"Finer Things\"",
                       @"\"Scared Money\"",
                      @"\"Twice\"",
                       @"\"Know That\"",
                       @"\"Chonkyfire\"",
                      @"\"Come Around\""];
    
    
    
    // Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    
    
    
    if ([segue.identifier isEqualToString:@"showAlbumDetail"]) {
        
        NSArray *indexPaths = [self.collectionView indexPathsForSelectedItems];
        
        UINavigationController *destViewController = segue.destinationViewController;
        AlbumDetailViewController *albumDetailViewController = (AlbumDetailViewController *)[destViewController.childViewControllers firstObject];
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        
        albumDetailViewController.albumImageName = [albumImages objectAtIndex:indexPath.row];
        albumDetailViewController.backgroundImageName = [backgroundImages objectAtIndex:indexPath.row];
        albumDetailViewController.artistName = [artistNames objectAtIndex:indexPath.row];
        albumDetailViewController.albumName = [albumNames objectAtIndex:indexPath.row];
        albumDetailViewController.descriptionText = [descriptions objectAtIndex:indexPath.row];
        albumDetailViewController.favoriteSong = [favoriteSongs objectAtIndex:indexPath.row];
        
        
        
        [self.collectionView deselectItemAtIndexPath:indexPath animated:NO];
        
        
        
    }
    
    // Pass the selected object to the new view controller.
    
    
    
    
    
}


// In a storyboard-based application, you will often want to do a little preparation before navigation





- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return albumImages.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
   
    
    AlbumCollectionViewCell *cell = (AlbumCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
   // cell.albumImageView.image = [albumImages objectAtIndex:indexPath.row];
    
    
    cell.albumImageView.image = [UIImage imageNamed:[albumImages objectAtIndex:indexPath.row]];
    
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
