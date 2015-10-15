//
//  ScollViewContainer.m
//  iCarousel
//
//  Created by LaTiesha Caston on 10/14/15.
//  Copyright © 2015 LaTiesha Caston. All rights reserved.
//

#import "ScollViewContainer.h"

@implementation ScollViewContainer

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent*)event {
    UIView *view = [super hitTest:point withEvent:event];
    if (view == self) {
        return _scrollView;
    }
    return view; }

@end
