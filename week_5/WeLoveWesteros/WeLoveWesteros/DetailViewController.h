//
//  DetailViewController.h
//  WeLoveWesteros
//
//  Created by LaTiesha Caston on 9/6/15.
//  Copyright (c) 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController


@property (nonatomic, strong) IBOutlet UIImageView *detailRegionImage;
@property (nonatomic, strong) IBOutlet UILabel *detailRegionName;
@property (nonatomic, strong) IBOutlet UITextView *textView;
@property (nonatomic, strong) NSString *stringRegionName;

@property (nonatomic, strong)  UIImage *justDetailImage;






@end
