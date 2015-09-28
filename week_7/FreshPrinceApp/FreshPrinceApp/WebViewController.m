//
//  WebViewController.m
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/19/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    NSURL *url = [NSURL fileURLWithPath:[[NSBundle
//    mainBundle]pathForResource:@"about.html" ofType:nil]];
//    NSURLRequest *request = [NSURLRequest requestWithURL:url];
//    [self.wikiWebView loadRequest:request];
    
    NSURL *url=[NSURL URLWithString:@"https://en.m.wikipedia.org/wiki/The_Fresh_Prince_of_Bel-Air"];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [self.wikiWebView loadRequest:request];
    
    
    
    NSURL *bioURL = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"bio.html" ofType:nil]];
    NSURLRequest *bioRequest = [NSURLRequest requestWithURL:bioURL];
    [self.bioWebView loadRequest:bioRequest];
    
    
    
    
    
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
