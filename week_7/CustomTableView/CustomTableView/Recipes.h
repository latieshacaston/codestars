//
//  Recipes.h
//  CustomTableView
//
//  Created by LaTiesha Caston on 9/16/15.
//  Copyright (c) 2015 new. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipes : NSObject


@property (nonatomic, strong) NSString *name; //name of recipe
@property (nonatomic, strong) NSString *prepTime; //preparation time
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSArray *ingredients;

@end
