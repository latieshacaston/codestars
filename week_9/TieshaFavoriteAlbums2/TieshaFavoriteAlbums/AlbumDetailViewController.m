//
//  AlbumDetailViewController.m
//  TieshaFavoriteAlbums
//
//  Created by LaTiesha Caston on 10/4/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "AlbumDetailViewController.h"

@interface AlbumDetailViewController ()

@end

@implementation AlbumDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   

    
    
    self.albumImageView.image = [UIImage imageNamed:self.albumImageName];
    
    self.backgroundImageView.image = [UIImage imageNamed:self.backgroundImageName];
    
    self.artistNameLabel.text = self.artistName;
    self.albumNameLabel.text = self.albumName;
    self.albumDescriptionLabel.text = self.descriptionText;
    self.favoriteSongLabel.text = self.favoriteSong; 
    
    
    
    // Do any additional setup after loading the view.
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

- (IBAction)close:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion: nil];
    
    
}
@end
