//
//  PagedScrollViewController.m
//  iCarousel
//
//  Created by LaTiesha Caston on 10/13/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "PagedScrollViewController.h"

@interface PagedScrollViewController ()


@property (nonatomic, strong) NSArray *pageImages;
@property (nonatomic, strong) NSMutableArray *pageViews;

- (void) loadVisiblePages;
- (void) loadPage: (NSInteger)page;
- (void) purgePage: (NSInteger)page;
- (void) scrollViewDoubleTapped: (UITapGestureRecognizer *)recognizer;
- (void) scrollViewTwoFingerTapped: (UITapGestureRecognizer *)recognizer;



@end

@implementation PagedScrollViewController


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

- (void) loadPage:(NSInteger)page {

    if (page < 0 || page >= self.pageImages.count) {
    
    // If it's outside the range of what you have to display, then do nothing
        
        return;
    
    }

    // 1. First, you check if you’ve already loaded the view. If you haven’t, then the object in the pageViews array will be an NSNull (remember, [NSNull null] is a special singleton which is why == works).
    
    UIView *pageView = [self.pageViews objectAtIndex:page];
    
    if ((NSNull *)pageView == [NSNull null]) {
    
    
    // 2. If you made it into the if statement, then you need to create a page. So first, work out the frame for this page. It’s calculated as being the same size as the scroll view, positioned at zero y offset, and then offset by the width of a page multiplied by the page number in the x (horizontal) direction.
        
    CGRect frame = self.scrollView.bounds;
    frame.origin.x = frame.size.width * page;
    frame.origin.y = 0.0f;
        
    // 3. This creates a new UIImageView, sets it up and adds it to the scroll view.
        
        UIImageView *newPageView = [[UIImageView alloc] initWithImage:[self.pageImages objectAtIndex:page]];
        newPageView.contentMode = UIViewContentModeScaleAspectFit;
        newPageView.frame = frame;
        [self.scrollView addSubview:newPageView];
        
        // 4. Finally, you replace the NSNull in the pageViews array with the view you’ve just created, so that if this page was asked to load again you would now not go into the if statement and instead do nothing since the view for the page has already been created.
        
        [self.pageViews replaceObjectAtIndex:page withObject:newPageView];
    
    
    }
    
    
    
}



- (void) purgePage:(NSInteger)page  {

    if (page < 0 || page >= self.pageImages.count) {
    
        return;
    
    }

    // Remove a page from the scroll view and reset the container array
    
    UIView *pageView = [self.pageViews objectAtIndex:page];
     if ((NSNull*)pageView != [NSNull null]) {
    
    [pageView removeFromSuperview];
    [self.pageViews replaceObjectAtIndex:page withObject:[NSNull null]];

     }

}


- (void) loadVisiblePages {

// First, determind which page is currently visible
    CGFloat pageWidth = self.scrollView.frame.size.width;
    NSInteger page = (NSInteger)floor((self.scrollView.contentOffset.x * 2.0f + pageWidth) / (pageWidth * 2.0f));
    
    // Update the page control
    
    self.pageControl.currentPage = page;
    
    // Work out which pages you want to load
    
    NSInteger firstPage = page - 1;
    NSInteger lastPage = page + 1;
    
    // Purge anything before the first page
    
    for (NSInteger i = 0; i<firstPage; i++) {
        [self purgePage:i];
    
    }

    
    // Load pages in our range
    for (NSInteger i = firstPage; i <lastPage; i++) {
    
        [self loadPage:i];
    
    
    }
    
    
    // Purse anything after the last page
    
    for (NSInteger i=lastPage+1; i<self.pageImages.count; i++) {
    
        [self purgePage:i];
    
    }

}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView {


// Load the pages that are now on screen
    [self loadVisiblePages]; 
    

}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1. First, you set up the page images. You’ve added five photos to the project and so you just make an array containing all of them.
    
    self.pageImages = [NSArray arrayWithObjects:
                       [UIImage imageNamed:@"photo1.png"],
                       [UIImage imageNamed:@"photo2.png"],
                       [UIImage imageNamed:@"photo3.png"],
                       [UIImage imageNamed:@"photo4.png"],
                       [UIImage imageNamed:@"photo5.png"],
                       nil ];
    
    NSInteger pageCount = self.pageImages.count;
    
    // 2. Then, you tell the page control how many pages there are, and that it should start on page 0.
    
    self.pageControl.currentPage = 0;
    self.pageControl.numberOfPages = pageCount;
    
    // 3. Next, you set up the array that holds the UIImageView instances. At first, no pages have been lazily loaded and so you just fill it with the right amount of NSNull objects that are needed – one for each page. You’re using [NSNull null] because it’s a lightweight singleton object that can be added to an array to signify a placeholder. Later on, you’ll use the fact that there is an NSNull in there to know if that page is loaded or not.
    
    self.pageViews = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < pageCount; i++) {
    
        [self.pageViews addObject:[NSNull null]];
    
    }
    
    
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // 4. The scroll view, as before, needs to know its content size. Since you want a horizontal paging scroll view (it could just as easily be vertical if you want), you calculate the width to be the number of pages multiplied by the width of the scroll view. The height of the content is the same as the height of the scroll view.
    
    CGSize pagesScrollViewSize = self.scrollView.frame.size;
    self.scrollView.contentSize = CGSizeMake(pagesScrollViewSize.width * self.pageImages.count, pagesScrollViewSize.height);
    
    
    // 5 You’re going to need some pages shown initially, so you call loadVisiblePages,
    [self loadVisiblePages];
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
