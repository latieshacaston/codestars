//
//  WebPageViewController.h
//  RssReader
//
//  Created by LaTiesha Caston on 10/7/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebPageViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property (strong, nonatomic) NSString *link;


@end
