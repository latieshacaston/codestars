//
//  WebViewController.m
//  WeLoveWesteros
//
//  Created by LaTiesha Caston on 9/6/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // adding about.html
    NSURL *aboutURL = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"about.html" ofType:nil]];
    NSURLRequest *aboutRequest = [NSURLRequest requestWithURL:aboutURL];
    [self.aboutView loadRequest:aboutRequest];
    
    // adding bio.html
    NSURL *bioURL = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"bio.html" ofType:nil]];
    NSURLRequest *bioRequest = [NSURLRequest requestWithURL:bioURL];
    [self.bioView loadRequest:bioRequest];
    
    
    
    
    
    
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
