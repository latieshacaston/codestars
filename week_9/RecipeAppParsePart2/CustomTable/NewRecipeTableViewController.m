//
//  NewRecipeTableViewController.m
//  CustomTable
//
//  Created by Simon Ng on 10/11/14.
//  Copyright (c) 2014 AppCoda. All rights reserved.
//

#import "NewRecipeTableViewController.h"
#import <MobileCoreServices/UTCoreTypes.h>
#import <Parse/Parse.h>

@interface NewRecipeTableViewController ()

@end

@implementation NewRecipeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.nameTextField.delegate = self;
    self.prepTimeTextField.delegate = self;
    self.ingredientsTextField.delegate = self;
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (void) showPhotoLibrary {

    if (([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeSavedPhotosAlbum]== NO)) {
    
        return;
    
    }

    UIImagePickerController *picker = [[UIImagePickerController alloc]init];
    picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    
    //Displays saved pictures from the Camera Roll album
    picker.mediaTypes = @[(NSString *)kUTTypeImage];
    
    //Hides controls for moving & scaling pictures
    picker.allowsEditing = NO;
    picker.delegate = self;

    
    [self presentViewController:picker animated:YES completion:NULL];

}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    if (indexPath.row == 0) {
    
        [self showPhotoLibrary]; 
    
    }



}

- (void) imagePickerController: (UIImagePickerController *) picker didFinishPickingMediaWithInfo: (NSDictionary *) info {


    UIImage *originalImage = (UIImage *) [info objectForKey:UIImagePickerControllerOriginalImage];
    self.recipeImageView.image = originalImage;

    [picker dismissViewControllerAnimated:YES completion:nil]; 


}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {

    [textField resignFirstResponder];
    return YES;

}



#pragma mark - Table view data source

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)save:(id)sender {
    
    
    //Create PFObject with recipe information
    
    PFObject *recipe = [PFObject objectWithClassName:@"Recipe"];
    [recipe setObject:self.nameTextField.text forKey:@"name"];
    [recipe setObject:self.prepTimeTextField.text forKey:@"prepTime"];
    
    NSArray *ingredients = [self.ingredientsTextField.text componentsSeparatedByString:@","];
    [recipe setObject:ingredients forKey:@"ingredients"];
    
    //Recipe Image
    
    NSData *imageData = UIImageJPEGRepresentation(self.recipeImageView.image, 0.8);
    NSString *filename = [NSString stringWithFormat:@"%@.png", self.nameTextField.text];
    //PFFile = binary file on Parse servers
    
    PFFile *imageFile = [PFFile fileWithName:filename data:imageData];
    [recipe setObject:imageFile forKey:@"image"];
    
    //Show progress
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    
    indicator.frame = CGRectMake(0.0, 0.0, 40.0, 40.0);
    indicator.center = self.view.center;
    [self.view addSubview:indicator];
    [indicator bringSubviewToFront:self.view];
    [indicator startAnimating];
    
    //Upload recipe to Parse
    
    [recipe saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error)  {
    
        [indicator stopAnimating];
        
        if (!error) {
        
        //Dismiss the controller
            [self dismissViewControllerAnimated:YES completion:nil];
            
            //Notify table view to reload recipes from Parse cloud
            
            [[NSNotificationCenter defaultCenter] postNotificationName:@"refreshTable" object:self];
        
        } else {
        
            UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Upload Failure" message:[error localizedDescription] preferredStyle:UIAlertControllerStyleAlert];
            
            UIAlertAction *okayAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
            [alertController addAction:okayAction];
            [self presentViewController:alertController animated:YES completion:nil];
            
        }
    
    } ];
   
}

- (IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
