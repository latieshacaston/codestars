//
//  MusicalGenreWebViewController.m
//  TieshaFavoriteAlbums
//
//  Created by LaTiesha Caston on 10/11/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "MusicalGenreWebViewController.h"

@interface MusicalGenreWebViewController ()

@end

@implementation MusicalGenreWebViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];

    
    
    NSURL *url = [NSURL URLWithString:self.URLString];
    
    NSURLRequest *newRequest = [NSURLRequest requestWithURL:url];
    
  
    [self.webView loadRequest:newRequest];
    
    NSLog (@"They passed %@, The request is %@", self.URLString, newRequest);
    
    
    
    NSURL *greatestArtistURL = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"greatestArtist.html" ofType:nil]];
    
    NSURLRequest *greatestArtistRequest = [NSURLRequest requestWithURL:greatestArtistURL];
    [self.bestArtistWebView loadRequest:greatestArtistRequest];
    
    NSLog (@"%@", greatestArtistURL); 
    
    
    

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

- (IBAction)closeWebView:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion: nil];
    
}
@end
