//
//  LandingScrollViewController.h
//  FreshPrince
//
//  Created by LaTiesha Caston on 10/14/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface LandingScrollViewController : UIViewController <UIScrollViewDelegate, AVAudioPlayerDelegate, AVAudioSessionDelegate>


// @property (nonatomic, retain) AVAudioPlayer *player;
- (IBAction)buttonPressed:(id)sender;




@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UIPageControl *pageControl;


@end
