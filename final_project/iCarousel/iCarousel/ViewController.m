//
//  ViewController.m
//  iCarousel
//
//  Created by LaTiesha Caston on 10/13/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@property (nonatomic, strong) UIImageView *imageView;

- (void) centerScrollViewContents;
- (void) scrollViewDoubleTapped: (UITapGestureRecognizer *)recognizer;
- (void) scrollViewTwoFingerTapped: (UITapGestureRecognizer *)recognizer;


@end

@implementation ViewController


- (void) centerScrollViewContents {


    CGSize boundsSize = self.scrollView.bounds.size;
    CGRect contentsFrame = self.imageView.frame;
    
    if (contentsFrame.size.width < boundsSize.width) {
    
    
        contentsFrame.origin.x = (boundsSize.width - contentsFrame.size.width) / 2.0f;
    } else {
    
        contentsFrame.origin.x = 0.0f;
    
    }
    
    if (contentsFrame.size.height < boundsSize.height) {
    
        contentsFrame.origin.y = (boundsSize.height - contentsFrame.size.height) / 2.0f; } else {
            contentsFrame.origin.y = 0.0f;
    
    
    }
    
    self.imageView.frame = contentsFrame;
    
    
}




- (void) scrollViewDoubleTapped:(UITapGestureRecognizer *)recognizer {

    // 1. First, you need to work out where the tap occurred within the image view. You’ll use this to zoom in directly on that point, which is probably what you’d expect as a user.
    
    CGPoint pointInView = [recognizer locationInView:self.imageView];
    
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




- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {

//return the view that you want to zoom
    
    return self.imageView;


}



- (void) scrollViewDidZoom:(UIScrollView *)scrollView {

// The scrollview has zoomed, so you need to re-center the contents
    
    [self centerScrollViewContents]; 



}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    // 1. First, you need to create an image view with the photo1.png image you added to your project and you set the image view frame (it’s size and position) so it’s the size of the image and sits at point 0,0 within the parent. Finally, the image view gets added as a subview of your scroll view.
    
    UIImage *image = [UIImage imageNamed:@"photo1.png"];
    self.imageView = [[UIImageView alloc] initWithImage: image];
    self.imageView.frame = (CGRect) { .origin = CGPointMake(0.0f, 0.0f), .size=image.size
    
    };
    
    [self.scrollView addSubview:self.imageView];
    
    // 2, You have to tell your scroll view the size of the content contained within it, so that it knows how far it can scroll horizontally and vertically. In this case, it’s the size of the image.
    
    self.scrollView.contentSize = image.size;
    
    // 3. Here you’re setting up two gesture recognizers: one for the double-tap to zoom in, and one for the two-finger-tap to zoom out.
    
    UITapGestureRecognizer *doubleTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollViewDoubleTapped:)];
    
    doubleTapRecognizer.numberOfTapsRequired = 2;
    doubleTapRecognizer.numberOfTouchesRequired = 1;
    
    [self.scrollView addGestureRecognizer:doubleTapRecognizer];
    
    UITapGestureRecognizer *twoFingerTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollViewTwoFingerTapped:)];
    
    twoFingerTapRecognizer.numberOfTapsRequired = 1;
    twoFingerTapRecognizer.numberOfTouchesRequired = 2;
    
    [self.scrollView addGestureRecognizer:twoFingerTapRecognizer];
    
}



- (void) viewWillAppear:(BOOL)animated {


[super viewWillAppear:animated];

    // 4. Next, you need to work out the minimum zoom scale for the scroll view. A zoom scale of one means that the content is displayed at normal size. A zoom scale below one shows the content zoomed out, while a zoom scale of greater than one shows the content zoomed in.

    CGRect scrollViewFrame = self.scrollView.frame;
    CGFloat scaleWidth = scrollViewFrame.size.width / self.scrollView.contentSize.width;
    
    CGFloat scaleHeight = scrollViewFrame.size.height / self.scrollView.contentSize.height;
    
    CGFloat minScale = MIN(scaleWidth, scaleHeight);
    self.scrollView.minimumZoomScale = minScale;
    
    // 5. You set the maximum zoom scale as 1, because zooming in more than the image’s resolution can support will cause it to look blurry. You set the initial zoom scale to be the minimum, so that the image starts fully zoomed out.
    
    self.scrollView.maximumZoomScale = 1.0f;
    self.scrollView.zoomScale = minScale;
    
    // 6. this will center the image within the scroll view
    
    [self centerScrollViewContents];


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return NO;
}


@end
