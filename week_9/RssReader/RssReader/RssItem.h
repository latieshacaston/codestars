//
//  RssItem.h
//  RssReader
//
//  Created by LaTiesha Caston on 10/7/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RssItem : NSObject


@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *link;
@property (strong, nonatomic) NSString *contentDescription;
@property (strong, nonatomic) NSString *pubDate; 

@end
