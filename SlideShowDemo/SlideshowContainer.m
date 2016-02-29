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

const float AIV_ANIMATION_DURATION = 0.50;
// this const is declared in UIView+ShowOrHide Category, prefixed here with AIV_
const float AIV_ANIMATION_INTERVAL = 2.25;


- (void)animateWithImages:(NSArray *)imageArray{
    NSLog(@"-animateWithImages:");

    privateImageArray = imageArray;
    
    _slideShow.delegate = self;





//    _slideShow = [[KASlideShow alloc] initWithFrame:self.frame];







    _slideShow.layer.cornerRadius = self.layer.cornerRadius;

    [_slideShow setDelay:1.0];
    [_slideShow setTransitionDuration:AIV_ANIMATION_DURATION];
    [_slideShow setTransitionType:KASlideShowTransitionFade];
    [_slideShow setImagesContentMode:UIViewContentModeScaleAspectFit];
    for (i = 0; i < privateImageArray.count; i ++) {
        
        UIImage *imageForSlide = [[privateImageArray objectAtIndex:i]isKindOfClass:[UIImage class]] ?
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



    //  Thinking this will be replaced by a delegate. Will check use of note observation in original
    //  to ensure this will be appropriate.


    //  UPDATE: Actually, shouldn't be necessary since slideShow is not being hidden or brought to front
    //  on view. 
//    [[NSNotificationCenter defaultCenter] postNotificationName:kslideShowReady object:_slideShow];
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
