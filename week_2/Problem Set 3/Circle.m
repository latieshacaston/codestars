//
//  Circle.m
//  Problem Set 3
//
//  Created by LaTiesha Caston on 8/12/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import "Circle.h"

@implementation Circle



- (float) circleArea {


    float diameter = [self circleRadius] * [self circleRadius];
    return 3.14 * diameter;



}



@end
