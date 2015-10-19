//
//  MemeCreatorViewController.m
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/27/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "MemeCreatorViewController.h"
#import <Social/Social.h>

@interface MemeCreatorViewController ()

@end

@implementation MemeCreatorViewController {


  
    UIImage *imageForSharing;



}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.memeTextField.layer.shadowOpacity = 1.0;
    self.memeTextField.layer.shadowRadius = 0.0;
    self.memeTextField.layer.shadowColor = [UIColor blackColor].CGColor;
    self.memeTextField.layer.shadowOffset = CGSizeMake(2.0, 1.0);
    
    self.memeImageView.image = [UIImage imageNamed:self.memeImageName];
    
    [self.memeTextField setFont:[UIFont fontWithName:@"Impact" size:30.0]];
    
    self.memeImageView.userInteractionEnabled = YES;
  
    
    // Do any additional setup after loading the view.
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

// It is important for you to hide the keyboard
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    
    
    return YES;
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

- (IBAction)closed:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}





- (IBAction)saveButtonPressed:(id)sender {

    
    UIView *wholeScreen = self.memeImageView;
    
    [wholeScreen addSubview:self.memeTextField];
    
    // define the size and grab a UIImage from it
    UIGraphicsBeginImageContextWithOptions(wholeScreen.bounds.size, wholeScreen.opaque, 0.0);
    [wholeScreen.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageWriteToSavedPhotosAlbum(theImage, self,@selector(image:didFinishSavingWithError:contextInfo:), nil);
    
   
    
}



    


- (IBAction)viewPhotosPressed:(id)sender {
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];
    
    
}

- (IBAction)shareButtonPressed:(id)sender {
   
    UIView *wholeScreen = self.memeImageView;
    [wholeScreen addSubview:self.memeTextField];
    UIGraphicsBeginImageContextWithOptions(wholeScreen.bounds.size, wholeScreen.opaque, 0.0);
    [wholeScreen.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *theImageforSharing = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
  
    
        if([SLComposeViewController isAvailableForServiceType:SLServiceTypeFacebook]) {
        
            SLComposeViewController *facebookController = [SLComposeViewController composeViewControllerForServiceType:SLServiceTypeFacebook];
            
            [facebookController setInitialText:@"Check out my fresh meme"];
            [facebookController addImage:theImageforSharing];
            [self presentViewController:facebookController animated:YES completion:nil];
        
        
        }
    
    
    
    
}



- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    // Was there an error?
    if (error != NULL)
    {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"My Alert"
         message:@"This is an alert."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    } else {
       
        
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Success"
                                                                       message:@"Image was successfully saved in photo album"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Close" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
       [ self presentViewController:alert animated:YES completion:nil];
        
        
        
        
    }
}




@end
