//
//  MusicTableViewCell.h
//  FreshPrince
//
//  Created by LaTiesha Caston on 10/20/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface MusicTableViewCell : UITableViewCell <AVAudioPlayerDelegate, AVAudioSessionDelegate>


@property (weak, nonatomic) IBOutlet UILabel *songTitle;

@property (weak, nonatomic) IBOutlet UILabel *artistName;


@property (weak, nonatomic) IBOutlet UIButton *playButton;

- (IBAction)pressedPlay:(id)sender;

@property (weak, nonatomic) NSString *stringSongTitle;





@end
