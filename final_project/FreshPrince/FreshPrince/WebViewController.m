//
//  WebViewController.m
//  FreshPrince
//
//  Created by LaTiesha Caston on 10/21/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSURL *url=[NSURL URLWithString:@"https://en.m.wikipedia.org/wiki/The_Fresh_Prince_of_Bel-Air"];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [self.wikiWebView loadRequest:request];
    
    NSURL *factsURL = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"FPFacts.html" ofType:nil]];
    NSURLRequest *factsRequest = [NSURLRequest requestWithURL:factsURL];
    [self.factsWebView loadRequest:factsRequest];
    
    
    
    
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
