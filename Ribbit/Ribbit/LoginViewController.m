//
//  LoginViewController.m
//  Ribbit
//
//  Created by Latiesha Caston on 12/6/15.
//  Copyright © 2015 Latiesha Caston. All rights reserved.
//

#import "LoginViewController.h"
#import <Parse/Parse.h>

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.hidesBackButton = YES;
    
    // Do any additional setup after loading the view.
}












/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)login:(id)sender {
    
    
    
    NSString *username = [self.userNameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *password = [self.passwordField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
 
    
    if (username.length == 0 || password.length == 0 ) {
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Oops!"
            message:@"Make sure you enter a username and password"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
        
    } else {
    
    
    
        [PFUser logInWithUsernameInBackground:username password:password
                                        block:^(PFUser *user, NSError *error) {
                                                
                                                if (error) {
                                                    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Sorry!"
                                                                                                                   message:[error.userInfo objectForKey:@"error"]
                                                                                                            preferredStyle:UIAlertControllerStyleAlert];
                                                    
                                                    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                                                                          handler:^(UIAlertAction * action) {}];
                                                    
                                                    [alert addAction:defaultAction];
                                                    [self presentViewController:alert animated:YES completion:nil];
                                                
                                                
                                            } else {
                                                
                                                [self.navigationController popToRootViewControllerAnimated:YES]; 
                                                
                                                
                                               
                                            }
                                        }];
    
    
    
    
    
    
    }

    
    
}
@end
