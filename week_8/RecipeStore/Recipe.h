//
//  Recipe.h
//  RecipeStore
//
//  Created by LaTiesha Caston on 10/3/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

NS_ASSUME_NONNULL_BEGIN

@interface Recipe : NSManagedObject

// Insert code here to declare functionality of your managed object subclass


@property (nonatomic, retain) NSString *image;

@property (nonatomic, retain) NSString *name;

@property (nonatomic, retain) NSString *prepTime; 


@end

NS_ASSUME_NONNULL_END

#import "Recipe+CoreDataProperties.h"
