//
//  ViewController.m
//  Calculator
//
//  Created by new on 8/28/15.
//  Copyright (c) 2015 new. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

{

    NSNumber *input1;
    NSNumber *total;
    NSNumber *clearScreen;

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)numberReader:(UIButton *)numButtons {
    
    if (clearScreen !=nil) {
     self.displayForCalculator.text = @" ";
        clearScreen = nil;
    
    } else {
    
    
    //Convert the Button to a string
    
    NSString *buttonHitAsString = [numButtons currentTitle];
    
    NSLog ( @" this is the button you hit %@", buttonHitAsString);
  
    
    
    // A string for whats actually on the display
    
    NSString *currentDisplayText = self.displayForCalculator.text;
    
    // Combine whats on the display with whats currently hit
    
    NSString *combinedString = [ currentDisplayText stringByAppendingString:buttonHitAsString];
    
    // push the combined string to the display
    
    self.displayForCalculator.text = combinedString;
    
    
    float floatTotal = [combinedString floatValue];
    input1 = [[NSNumber alloc] initWithFloat:floatTotal];
    
    
    NSLog(@"Input 1 is %@", input1);
    
   
        
    }
    
    
   
    
    
}


- (IBAction)clearButton:(UIButton *)clearButton {
    
   
    
    self.displayForCalculator.text = @"";
    
    input1 = nil;
 
    total = nil;
    
    
}



// Method for mathematical functions

- (IBAction)functions:(UIButton *)functionInputs {
    
    
  
    self.displayForCalculator.text = @" ";

    
    // Getting the total a a float
    
    float totalAsFloat = [total floatValue] + [input1 floatValue];
    
    // passing that float to the an NS Number as declared at the top
    
    total = [[NSNumber alloc] initWithFloat: totalAsFloat];
    
    NSLog(@"now the total is %@", total);
    
    input1 = nil;
    
    // self.displayForCalculator.text = [[NSString alloc] initWithFormat:@"%@", total ];
    
    
        NSLog(@"now the total is %@", total);
    input1 = nil;
 
    
    // **MINE**
    
//            NSString *inputOne = self.displayForCalculator.text;
//            float inputOneAsFloat = [inputOne floatValue];
//            input1 = [[NSNumber alloc] initWithFloat:inputOneAsFloat];
//    
//            NSLog(@"input 1 is %@", input1);
//    
//    
//           float totalInput = [input1 floatValue] + [input2 floatValue];
//            total = [[NSNumber alloc] initWithFloat:totalInput];
//    
//            NSLog(@"total is %@", total);
//    
//    
//            NSString *display = [NSString stringWithFormat:@"%.2f", totalInput];
//            self.displayForCalculator.text = display;
//    
//            NSLog(@"display says is %@", display);
//    
//    
    

    
}


- (IBAction)enterButton:(UIButton *)theEnterButtonInput {
    self.displayForCalculator.text = [[NSString alloc]initWithFormat:@"%@",total];
    clearScreen = @1;
    
}





@end




//        NSString *inputOne = self.displayForCalculator.text;
//        float inputOneAsFloat = [inputOne floatValue];
//        input1 = [[NSNumber alloc] initWithFloat:inputOneAsFloat];
//
//        NSLog(@"input 1 is %@", input1);
//
//
//       float totalInput = [input1 floatValue] + [input2 floatValue];
//        total = [[NSNumber alloc] initWithFloat:totalInput];
//
//        NSLog(@"total is %@", total);
//
//
//        NSString *display = [NSString stringWithFormat:@"%.2f", totalInput];
//        self.displayForCalculator.text = display;
//
//        NSLog(@"display says is %@", display);
//

