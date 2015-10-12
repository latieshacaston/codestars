//
//  MusicalGenreWebViewController.h
//  TieshaFavoriteAlbums
//
//  Created by LaTiesha Caston on 10/11/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MusicalGenreWebViewController : UIViewController
- (IBAction)closeWebView:(id)sender;

@property (weak, nonatomic) IBOutlet UIWebView *webView;


@property (weak, nonatomic) NSURL *webViewURL;
@property (weak, nonatomic) NSURLRequest *webViewRequest;
@property (strong, nonatomic) NSString *URLString;

@end
