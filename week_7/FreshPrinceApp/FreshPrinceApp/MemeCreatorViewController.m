//
//  MemeCreatorViewController.m
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/27/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "MemeCreatorViewController.h"

@interface MemeCreatorViewController ()

@end

@implementation MemeCreatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.memeImageView.image = [UIImage imageNamed:self.memeImageName]; 
    
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

- (IBAction)closed:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}





@end
