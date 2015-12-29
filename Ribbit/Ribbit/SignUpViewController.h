//
//  SignUpViewController.h
//  Ribbit
//
//  Created by Latiesha Caston on 12/6/15.
//  Copyright © 2015 Latiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignUpViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *userNameField;

@property (weak, nonatomic) IBOutlet UITextField *passwordField;


@property (weak, nonatomic) IBOutlet UITextField *emailField;

- (IBAction)signUpButton:(id)sender;

@end
