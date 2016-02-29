//
//  AnimatingImageView.m
//  toolbox
//
//  Created by Glen Ruhl on 2/27/16.
//  Copyright (c) 2015 intradine. All rights reserved.
//

#import "SlideshowContainer.h"

@implementation SlideshowContainer {
    
    int i;
    NSTimer *timer;
    NSArray *privateImageArray;
}
const float AIV_ANIMATION_DURATION = 0.54f;
const float AIV_ANIMATION_INTERVAL = 2.3f;


- (void)animateWithImages:(NSArray *)imageArray{
    privateImageArray = imageArray;
    
    _slideShow.delegate = self;
    _slideShow.layer.cornerRadius = self.layer.cornerRadius;

    [_slideShow setDelay:1.0];
    [_slideShow setTransitionDuration:AIV_ANIMATION_DURATION];
    [_slideShow setTransitionType:KASlideShowTransitionFade];


    //  This works well for 6+ size/resolution. May need to change depending on device.
    [_slideShow setImagesContentMode:UIViewContentModeScaleToFill];

    for (i = 0; i < privateImageArray.count; i ++) {
        
        UIImage *imageForSlide = [[privateImageArray objectAtIndex:i]
                                     isKindOfClass:[UIImage class]] ?
                                [privateImageArray objectAtIndex:i] :
                                                                 nil;
        if (imageForSlide) {
            [_slideShow addImage:imageForSlide];
        } else {
            NSLog(@"No images found for slideshow.");
        }
    }
    i = 0;
    
    timer = [NSTimer timerWithTimeInterval:AIV_ANIMATION_INTERVAL
                                             target:self
                                           selector:@selector(slideshowtransition:)
                                           userInfo:nil
                                            repeats:YES];
    
    [[NSRunLoop mainRunLoop] addTimer:timer forMode:NSDefaultRunLoopMode];
}


- (void)slideshowtransition:(NSTimer *)timer {
    [_slideShow next];
}


- (void)stopAnimations{
    
    if ([timer isValid]) {
        [timer invalidate];
        timer = nil;
    } else {
        nil;
    }
}


@end
