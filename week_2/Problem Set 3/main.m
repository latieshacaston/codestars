//
//  main.m
//  Problem Set 3
//
//  Created by LaTiesha Caston on 8/12/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Square.h"
#import "Circle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
      Shape *shape1 = [[Shape alloc] init];
        
        shape1.shapeWidth = 4;
        shape1.shapeHeight = 8;
        
        
        NSLog(@"%.2f", [shape1 shapeArea]);
        
        
        Square *square1 = [[Square alloc] init];
        
        square1.shapeHeight = 3;
        square1.shapeWidth = 5;
        
        NSLog(@"%.2f", [square1 squareArea]);
        
        
        Circle *circle1 = [[Circle alloc] init];
        
        circle1.circleRadius = 7.8;
        
     
       NSLog(@"%.7f", [circle1 circleArea]);
       
        
        
        
       
    }
    return 0;
}
