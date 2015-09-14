//
//  ToDoItem.h
//  ToDoList
//
//  Created by LaTiesha Caston on 9/14/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject


@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;


@end
