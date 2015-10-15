//
//  CustomScrollViewController.m
//  iCarousel
//
//  Created by LaTiesha Caston on 10/13/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "CustomScrollViewController.h"

@interface CustomScrollViewController ()


@property (nonatomic, strong) UIView *containerView;

- (void) centerScrollViewContents;
 - (void) scrollViewDoubleTapped: (UITapGestureRecognizer *)recognizer;
 - (void) scrollViewTwoFingerTapped: (UITapGestureRecognizer *)recognizer;



@end

@implementation CustomScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // Set ip the container view to hold your custom view heirarchy
    CGSize containerSize = CGSizeMake(640.0f, 640.0f);
    self.containerView = [[UIView alloc] initWithFrame:(CGRect){.origin=CGPointMake(0.0f, 0.0f), .size=containerSize}];
    
    
    
    [self.scrollView addSubview:self.containerView];
    
    // Set up custom view hierarchy
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 640.0f, 80.0f)];
    
    redView.backgroundColor = [UIColor redColor];
    [self.containerView addSubview:redView];
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 560.0f, 640.0f, 80.0f)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.containerView addSubview:blueView];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(160.0f, 160.0f, 320.0f, 320.0f)];
    greenView.backgroundColor = [UIColor greenColor];
    [self.containerView addSubview:greenView];
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"slow.png"]];
    
    imageView.center = CGPointMake(320.0f, 320.0f);
    [self.containerView addSubview:imageView];
    
    // Tell the scroll view the size of the contents
    self.scrollView.contentSize = containerSize;
    
    
    
}


- (void) viewWillAppear:(BOOL)animated {

    [super viewWillAppear:animated];
    
    // Set up the minimum & maximum zoom scales
    CGRect scrollViewFrame = self.scrollView.frame;
    CGFloat scaleWidth = scrollViewFrame.size.width / self.scrollView.contentSize.width;
    CGFloat scaleHeight = scrollViewFrame.size.height / self.scrollView.contentSize.height;
    CGFloat minScale = MIN(scaleWidth, scaleHeight);
    
    self.scrollView.minimumZoomScale = minScale;
    self.scrollView.maximumZoomScale = 1.0f;
    self.scrollView.zoomScale = 1.0f;
    
    [self centerScrollViewContents];


}


- (void) scrollViewDoubleTapped:(UITapGestureRecognizer *)recognizer {
    
    // 1. First, you need to work out where the tap occurred within the image view. You’ll use this to zoom in directly on that point, which is probably what you’d expect as a user.
    
    CGPoint pointInView = [recognizer locationInView:self.scrollView];
    
    // 2. Next, you calculate a zoom scale that’s zoomed in 150%, but capped at the maximum zoom scale you specified in viewDidLoad.
    
    CGFloat newZoomScale = self.scrollView.zoomScale * 1.5f;
    newZoomScale = MIN(newZoomScale, self.scrollView.maximumZoomScale);
    
    // 3. Then you use the location from step #1 to calculate a CGRect rectangle that you want to zoom in on
    
    CGSize scrollViewSize = self.scrollView.bounds.size;
    
    CGFloat w = scrollViewSize.width / newZoomScale;
    CGFloat h = scrollViewSize.height / newZoomScale;
    CGFloat x = pointInView.x - (w / 2.0f);
    CGFloat y = pointInView.y - (h/2.0f);
    
    CGRect rectToZoomTo = CGRectMake(x, y, w, h);
    
    // 4. Finally, you need to tell the scroll view to zoom in, and here you animate it, as that will look pretty.
    
    [self.scrollView zoomToRect:rectToZoomTo animated:YES];
    
    
}


- (void)scrollViewTwoFingerTapped:(UITapGestureRecognizer *)recognizer {
    
    //Zoom out slightly, capping at the minimum zoom scale specified by the scholl view
    CGFloat newZoomScale = self.scrollView.zoomScale / 1.5f;
    newZoomScale = MAX(newZoomScale, self.scrollView.minimumZoomScale);
    [self.scrollView setZoomScale:newZoomScale animated:YES];
    
    
    
}


- (void)centerScrollViewContents {
    CGSize boundsSize = self.scrollView.bounds.size;
    CGRect contentsFrame = self.containerView.frame;
    
    if (contentsFrame.size.width < boundsSize.width) {
        contentsFrame.origin.x = (boundsSize.width - contentsFrame.size.width) / 2.0f;
    } else {
        contentsFrame.origin.x = 0.0f;
    }
    
    if (contentsFrame.size.height < boundsSize.height) {
        contentsFrame.origin.y = (boundsSize.height - contentsFrame.size.height) / 2.0f;
    } else {
        contentsFrame.origin.y = 0.0f;
    }
    
    self.containerView.frame = contentsFrame;
}

- (UIView*)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    // Return the view that we want to zoom
    return self.containerView;
}

- (void)scrollViewDidZoom:(UIScrollView *)scrollView {
    // The scroll view has zoomed, so we need to re-center the contents
    [self centerScrollViewContents];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
