//
//  ViewController.h
//  ThingsToDoInBedStuy
//
//  Created by LaTiesha Caston on 8/21/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ThingsToDoList;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *thingToDoLabel;


@property (strong, nonatomic) ThingsToDoList *thingsToDoList;



@end

