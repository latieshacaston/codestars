//
//  MusicTableViewCell.m
//  FreshPrince
//
//  Created by LaTiesha Caston on 10/20/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "MusicTableViewCell.h"

@implementation MusicTableViewCell  {
   
    AVAudioPlayer *audioPlayer;
    BOOL musicPlaying;
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
   
    

    // Configure the view for the selected state
}


    



- (IBAction)pressedPlay:(id)sender {
    

    
    if (!musicPlaying) {
        
   [self.playButton setImage:[UIImage imageNamed:@"Pause_Button.png"]
                         forState:UIControlStateNormal];
        
    
    NSString *theSongTitle = self.stringSongTitle;
    
    if ([theSongTitle isEqualToString:@"It's Not Unusual"]) {
        
        NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                             pathForResource:@"Tom_Jones_Its_Not_Unusual"
                                             ofType:@"mp3"]];
        
        NSLog(@"%@", url);
        
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc]
                       initWithContentsOfURL:url
                       error:&error];
        
        if (error)
        {
            NSLog(@"Error in audioPlayer: %@",
                  [error localizedDescription]);
        } else {
            [audioPlayer prepareToPlay];
        }
        
        
    } else if ([theSongTitle isEqualToString:@"Theme Song"]) {
    
        NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                             pathForResource:@"01_FPThemeSong"
                                             ofType:@"mp3"]];
         NSLog(@"%@", url);
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc]
                       initWithContentsOfURL:url
                       error:&error];
        
        
        if (error)
        {
            NSLog(@"Error in audioPlayer: %@",
                  [error localizedDescription]);
        } else {
            [audioPlayer prepareToPlay];
        }
    
    }
    
    else if ([theSongTitle isEqualToString:@"Parent's Just Dont Understand"]) {
    
        NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                             pathForResource:@"02_ParentsJustDont"
                                             ofType:@"mp3"]];
         NSLog(@"%@", url);
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc]
                       initWithContentsOfURL:url
                       error:&error];
       
        if (error)
        {
            NSLog(@"Error in audioPlayer: %@",
                  [error localizedDescription]);
        } else {
            [audioPlayer prepareToPlay];
        }
        
    
    } else if ([theSongTitle isEqualToString:@"OPP"]) {
        
        NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                             pathForResource:@"naughty_by_nature_OPP"
                                             ofType:@"mp3"]];
        NSLog(@"%@", url);
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc]
                       initWithContentsOfURL:url
                       error:&error];
        
        if (error)
        {
            NSLog(@"Error in audioPlayer: %@",
                  [error localizedDescription]);
        } else {
            [audioPlayer prepareToPlay];
        } 

        
    } else if ([theSongTitle isEqualToString:@"The Humpty Hump"]) {
        
        NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                             pathForResource:@"Digital_Underground_Humpty_Dance"
                                             ofType:@"mp3"]];
        NSLog(@"%@", url);
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc]
                       initWithContentsOfURL:url
                       error:&error];
        
        
        if (error)
        {
            NSLog(@"Error in audioPlayer: %@",
                  [error localizedDescription]);
        } else {
            [audioPlayer prepareToPlay];
        }
        
    } else if ([theSongTitle isEqualToString:@"Love Will Keep Us Together"]) {
        
        NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                             pathForResource:@"Captain_and_Tenille_Love_Will_Keep_Us_Together"
                                             ofType:@"mp3"]];
        NSLog(@"%@", url);
        NSError *error;
        audioPlayer = [[AVAudioPlayer alloc]
                       initWithContentsOfURL:url
                       error:&error];
        
        
        if (error)
        {
            NSLog(@"Error in audioPlayer: %@",
                  [error localizedDescription]);
        } else {
            [audioPlayer prepareToPlay];
        } }

        
        
        musicPlaying = YES;
    
        [audioPlayer play];
        
        
    } else {
    
        musicPlaying = NO;
        [audioPlayer pause];
        
        [self.playButton setImage:[UIImage imageNamed:@"Play_Button@2x.png"]
                         forState:UIControlStateNormal];
    
    
    }
    
    
        
    }
        






-(void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag
{
    
}
-(void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error
{
    
}
-(void)audioPlayerBeginInterruption:(AVAudioPlayer *)player
{
    
}
-(void)audioPlayerEndInterruption:(AVAudioPlayer *)player
{
    
}




@end
