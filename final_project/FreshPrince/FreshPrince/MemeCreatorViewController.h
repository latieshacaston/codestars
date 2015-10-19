//
//  MemeCreatorViewController.h
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/27/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MemeCreatorViewController : UIViewController <UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>



@property (weak, nonatomic) IBOutlet UIImageView *memeImageView;

@property (weak, nonatomic) NSString *memeImageName; 


- (IBAction)closed:(id)sender;


@property (weak, nonatomic) IBOutlet UITextField *memeTextField;




- (IBAction)saveButtonPressed:(id)sender;


- (IBAction)viewPhotosPressed:(id)sender;


- (IBAction)shareButtonPressed:(id)sender;



@end
