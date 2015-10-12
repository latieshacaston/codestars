//
//  AlbumDetailViewController.h
//  TieshaFavoriteAlbums
//
//  Created by LaTiesha Caston on 10/4/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlbumDetailViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIImageView *albumImageView;

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;

@property (weak, nonatomic) NSString *albumImageName;

@property (weak, nonatomic) NSString *backgroundImageName; 

@property (weak, nonatomic) IBOutlet UILabel *artistNameLabel;

@property (weak, nonatomic) IBOutlet UILabel *albumNameLabel;


@property (weak, nonatomic) IBOutlet UILabel *albumDescriptionLabel;


@property (weak, nonatomic) IBOutlet UILabel *favoriteSongLabel;

@property (weak, nonatomic) NSString *artistName;

@property (weak, nonatomic) NSString *albumName;

@property (weak, nonatomic) NSString *descriptionText;

@property (weak, nonatomic) NSString *favoriteSong;







- (IBAction)close:(id)sender;



@end
