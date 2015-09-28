//
//  MemeCreatorViewController.h
//  FreshPrinceApp
//
//  Created by LaTiesha Caston on 9/27/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MemeCreatorViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIImageView *memeImageView;

@property (weak, nonatomic) NSString *memeImageName; 


- (IBAction)closed:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *customMemeLabel;


@end
