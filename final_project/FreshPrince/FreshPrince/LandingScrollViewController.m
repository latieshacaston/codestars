//
//  LandingScrollViewController.m
//  FreshPrince
//
//  Created by LaTiesha Caston on 10/14/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "LandingScrollViewController.h"


@interface LandingScrollViewController () {
    AVAudioPlayer *_audioPlayer;
}
@property (nonatomic, strong) NSArray *pageImages;
@property (nonatomic, strong) NSMutableArray *pageViews;

- (void)loadVisiblePages;
- (void)loadPage:(NSInteger)page;
- (void)purgePage:(NSInteger)page;

@end

@implementation LandingScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
      
//        
//        // Construct URL to sound file
//        NSString *path = [NSString stringWithFormat:@"%@/brandy_acapella.mp3", [[NSBundle mainBundle] resourcePath]];
//        NSURL *soundUrl = [NSURL URLWithString:path];
//        
//        // Create audio player object and initialize with URL to sound
//        _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundUrl error:nil];
//    
//    
//    

    
    
    
   
    
    UIColor *myColor = [UIColor colorWithRed:(32.0/ 255.0) green:(20.0 / 255.0) blue:(72.0 / 255.0) alpha: 1];
    self.view.backgroundColor = myColor;
    
    //Instatiate the UITapGestureRecognizer
    UITapGestureRecognizer *taprecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapResponder:)];
    
    
    //Set number of taps needed for the gesture to be recognized
    
    taprecognizer.numberOfTapsRequired = 1;
    
    // set numebr of fingers that need to be on the screen for the
    //gesture to be recognized
    
    taprecognizer.numberOfTouchesRequired = 1;
    
    //add gesture to an image
    
    [self.scrollView addGestureRecognizer:taprecognizer];
    
    
    // Set up the image you want to scroll & zoom and add it to the scroll view
    self.pageImages = [NSArray arrayWithObjects:
                       [UIImage imageNamed:@"Quote_Quiz_Card@2x.png"],
                       [UIImage imageNamed:@"Meme_Maker_Card.png"],
                        [UIImage imageNamed:@"Fresh_Tunes_Card.png"],
                       nil];
    
    NSInteger pageCount = self.pageImages.count;
    
    // Set up the page control
    self.pageControl.currentPage = 0;
    self.pageControl.numberOfPages = pageCount;
    
    // Set up the array to hold the views for each page
    self.pageViews = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < pageCount; ++i) {
        [self.pageViews addObject:[NSNull null]];
    }
}


- (void) tapResponder: (UITapGestureRecognizer *) sender {
    
    
    
    NSLog (@"single tap detected");
    
    if (self.pageControl.currentPage == 0) {
        
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"QuoteQuiz" bundle:nil];
        UIViewController *quizViewController = (UIViewController *)[storyboard instantiateViewControllerWithIdentifier:@"QuizQuestionVC"];
        // [self presentModalViewController:youDeedIt animated:YES];
        
        [self presentViewController:quizViewController animated:YES completion:nil]; }
    
    else if (self.pageControl.currentPage == 1) {
        
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MemeGenerator" bundle:nil];
        UICollectionViewController *memeGenerator = (UICollectionViewController *)[storyboard instantiateViewControllerWithIdentifier:@"memeGenerator"];
        // [self presentModalViewController:youDeedIt animated:YES];
        
        [self presentViewController:memeGenerator animated:YES completion:nil]; }
    
    
    
    else if (self.pageControl.currentPage == 2) {
        
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"FreshTunes" bundle:nil];
        UITableViewController *songs = (UITableViewController *)[storyboard instantiateViewControllerWithIdentifier:@"music"];
        // [self presentModalViewController:youDeedIt animated:YES];
        
        [self presentViewController:songs animated:YES completion:nil]; }
    
    
    
    
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // Set up the content size of the scroll view
    CGSize pagesScrollViewSize = self.scrollView.frame.size;
    self.scrollView.contentSize = CGSizeMake(pagesScrollViewSize.width * self.pageImages.count, pagesScrollViewSize.height);
    
    // Load the initial set of pages that are on screen
    [self loadVisiblePages];
}

- (void)loadVisiblePages {
    // First, determine which page is currently visible
    CGFloat pageWidth = self.scrollView.frame.size.width;
    NSInteger page = (NSInteger)floor((self.scrollView.contentOffset.x * 2.0f + pageWidth) / (pageWidth * 2.0f));
    
    // Update the page control
    self.pageControl.currentPage = page;
    
    // Work out which pages you want to load
    NSInteger firstPage = page - 1;
    NSInteger lastPage = page + 1;
    
    // Purge anything before the first page
    for (NSInteger i=0; i<firstPage; i++) {
        [self purgePage:i];
    }
    for (NSInteger i=firstPage; i<=lastPage; i++) {
        [self loadPage:i];
    }
    for (NSInteger i=lastPage+1; i<self.pageImages.count; i++) {
        [self purgePage:i];
    }
}

- (void)loadPage:(NSInteger)page {
    if (page < 0 || page >= self.pageImages.count) {
        // If it's outside the range of what we have to display, then do nothing
        return;
    }
    
    // Load an individual page, first checking if you've already loaded it
    UIView *pageView = [self.pageViews objectAtIndex:page];
    if ((NSNull*)pageView == [NSNull null]) {
        CGRect frame = self.scrollView.bounds;
        frame.origin.x = frame.size.width * page;
        frame.origin.y = 0.0f;
        frame = CGRectInset(frame, 10.0f, 0.0f);
        
        UIImageView *newPageView = [[UIImageView alloc] initWithImage:[self.pageImages objectAtIndex:page]];
        newPageView.contentMode = UIViewContentModeScaleAspectFit;
        newPageView.frame = frame;
        [self.scrollView addSubview:newPageView];
        [self.pageViews replaceObjectAtIndex:page withObject:newPageView];
    }
}

- (void)purgePage:(NSInteger)page {
    if (page < 0 || page >= self.pageImages.count) {
        // If it's outside the range of what you have to display, then do nothing
        return;
    }
    
    // Remove a page from the scroll view and reset the container array
    UIView *pageView = [self.pageViews objectAtIndex:page];
    if ((NSNull*)pageView != [NSNull null]) {
        [pageView removeFromSuperview];
        [self.pageViews replaceObjectAtIndex:page withObject:[NSNull null]];
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    // Load the pages that are now on screen
    [self loadVisiblePages];
}


- (void) buttonPressed:(id)sender {
    
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]
                                         pathForResource:@"brandy_acapella"
                                         ofType:@"mp3"]];
    
    NSError *error;
    _audioPlayer = [[AVAudioPlayer alloc]
                   initWithContentsOfURL:url
                   error:&error];
    
    NSLog(@"%@", url);
    
    
    if (error)
    {
        NSLog(@"Error in audioPlayer: %@",
              [error localizedDescription]);
    } else {
        [_audioPlayer prepareToPlay];
    }
    [_audioPlayer play];
    
    
    
    
  
    
    
  //  [_audioPlayer play];
    
    
//    NSError *error;
//    player = [[AVAudioPlayer alloc]
//                    initWithContentsOfURL:url
//                    error:&error];
//    if (error)
//    {
//        NSLog(@"Error in audioPlayer: %@",
//              [error localizedDescription]);
//    } else {
//       player.delegate = self;
//        [player play];
//    }



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

@end
