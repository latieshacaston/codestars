//
//  HomeViewController.m
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/21/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "HomeViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   self.quizButton.layer.cornerRadius = 5;
    self.quizButton.clipsToBounds = YES;
    
    
    self.memeButton.layer.cornerRadius = 5;
    self.memeButton.clipsToBounds = YES;
    
    
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

- (IBAction)quizButtonPressed:(id)sender {
    
    
    [self performSegueWithIdentifier:@"segueToQuiz" sender:self];
    
    
    
}

- (IBAction)memeButtonPressed:(id)sender {
    
    [self performSegueWithIdentifier:@"segueToGenerator" sender:self];
    
    
    
}


- (IBAction)unwindToHomeViewController:(UIStoryboardSegue *)unwindSegue
{
    
    
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return NO;
}




@end
