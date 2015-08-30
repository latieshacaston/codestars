//
//  ViewController.m
//  HelloWorld
//
//  Created by LaTiesha Caston on 8/21/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) showMessage {
    
    
    UIAlertController *hellowWorldAlert = [UIAlertController alertControllerWithTitle:@"My First App" message:@"Hello World!" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okayAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [hellowWorldAlert addAction: okayAction];
    
    //Display the Hello World Message
    [self presentViewController:hellowWorldAlert animated:YES completion:nil];
    
    
    
    
}



@end
