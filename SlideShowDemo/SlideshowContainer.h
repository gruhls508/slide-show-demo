//
//  AnimatingImageView.h
//  toolbox
//
//  Created by Glen Ruhl on 2/27/16.
//  Copyright (c) 2015 intradine. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "KASlideShow.h"


@class UIView;

@interface SlideshowContainer : UIView
<KASlideShowDelegate>

@property BOOL keepAnimating;
@property KASlideShow *slideShow;

- (void)animateWithImages:(NSArray *)imageArray;
- (void)stopAnimations;

@end
