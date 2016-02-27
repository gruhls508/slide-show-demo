//
//  AnimatingImageView.h
//  toolbox
//
//  Created by Glen Ruhl on 1/20/15.
//  Copyright (c) 2015 intradine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "KASlideShow.h"
//#import "VCConstants.h"
//#import "UIView+FrameSubviews.h"

@class UIView;

@interface AnimatingImageView : UIImageView
<KASlideShowDelegate>

@property BOOL keepAnimating;
@property KASlideShow *slideShow;

- (void)animateWithImages:(NSArray *)imageArray;
- (void)stopAnimations;

@end
