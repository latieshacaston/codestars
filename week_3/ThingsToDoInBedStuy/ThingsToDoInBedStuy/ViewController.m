//
//  ViewController.m
//  ThingsToDoInBedStuy
//
//  Created by LaTiesha Caston on 8/21/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import "ViewController.h"
#import "ThingsToDoList.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    
    self.thingsToDoList = [[ThingsToDoList alloc] init];
    
    self.thingToDoLabel.text = [self.thingsToDoList returnARandomThingToDo];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // Dispose of any resources that can be recreated.
}


- (IBAction)showThingToDo {
    
    

    self.thingToDoLabel.text = [self.thingsToDoList returnARandomThingToDo];
    
}

@end
