//
//  AboutViewController.m
//  CustomTableView
//
//  Created by LaTiesha Caston on 9/5/15.
//  Copyright (c) 2015 new. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Add code to load web content in UIWebView
    
    //Create the NSURL to use for the NSURL Request, pass it a URL
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource: @"about.html" ofType:nil]];
    
    //Create the NSURL request
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    //Load the HTML request into the WebView
    
    [self.webView loadRequest:request];
    
    
    
    
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
