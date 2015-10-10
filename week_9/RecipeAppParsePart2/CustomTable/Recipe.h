//
//  Recipe.h
//  CustomTable
//
//  Created by Simon Ng on 2/11/14.
//  Copyright (c) 2014 AppCoda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recipe : NSObject

@property (nonatomic, strong) NSString *name; // name of recipe
@property (nonatomic, strong) NSString *prepTime; // preparation time
@property (nonatomic, strong) NSString *image; // image filename of recipe
@property (nonatomic, strong) NSArray *ingredients;

@end
