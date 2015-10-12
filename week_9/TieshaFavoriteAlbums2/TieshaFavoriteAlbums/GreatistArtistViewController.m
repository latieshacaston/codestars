//
//  GreatistArtistViewController.m
//  TieshaFavoriteAlbums
//
//  Created by LaTiesha Caston on 10/12/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "GreatistArtistViewController.h"

@interface GreatistArtistViewController ()

@end

@implementation GreatistArtistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
//    
//    NSURL *urel=[NSURL URLWithString:@"https://en.m.wikipedia.org/wiki/The_Fresh_Prince_of_Bel-Air"];
//    NSURLRequest *request=[NSURLRequest requestWithURL:urel];
//    [self.stevieWonderWebView loadRequest:request];
    
    
        NSURL *greatestArtistURL = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"greatestArtist" ofType:@"html"]];
    
        NSURLRequest *greatestArtistRequest = [NSURLRequest requestWithURL:greatestArtistURL];
    
        [self.stevieWonderWebView loadRequest:greatestArtistRequest];
    
        NSLog (@"%@", greatestArtistURL);
        
    
    
    
    
    
    
    
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

@end
