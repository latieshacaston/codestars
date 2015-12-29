//
//  LoginViewController.h
//  Ribbit
//
//  Created by Latiesha Caston on 12/6/15.
//  Copyright © 2015 Latiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *userNameField;


@property (weak, nonatomic) IBOutlet UITextField *passwordField;





- (IBAction)login:(id)sender;


@end
