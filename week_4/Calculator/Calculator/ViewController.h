//
//  ViewController.h
//  Calculator
//
//  Created by new on 8/28/15.
//  Copyright (c) 2015 new. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *displayForCalculator;


- (IBAction)numberReader:(UIButton *)numButtons;


- (IBAction)functions:(UIButton *)functionInputs;

- (IBAction)clearButton:(UIButton *)clearButton;



- (IBAction)enterButton:(UIButton *)enterButtonInput;





@end

