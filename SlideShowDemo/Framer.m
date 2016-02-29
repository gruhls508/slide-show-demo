//
//  Framer.m
//  SlideShowDemo
//
//  Created by Glen Ruhl on 2/27/16.
//  Copyright © 2016 intradine. All rights reserved.
//

#import "Framer.h"


@implementation Framer

+ (CGRect)frameForContainer:(UIView *)container {

    CGRect viewFrame = container.frame;
    CGRect superFrame = container.superview.frame;
    CGSize superSize = superFrame.size;

    CGFloat superWidth = superSize.width;
    CGFloat superHeight = superSize.height;

    CGPoint viewOrigin = viewFrame.origin;
    CGSize viewSize = viewFrame.size;

    CGFloat viewWidth = viewSize.width;
    CGFloat viewHeight = viewSize.height;

    CGFloat desiredOriginX = superWidth * .11f;
    CGFloat desiredOriginY = superHeight * .09f;

    CGFloat desiredWidth = superWidth - (desiredOriginX * 2);
    CGFloat desiredHeight = superHeight * .26f;


    CGFloat viewOriginX = viewOrigin.x;
    CGFloat viewOriginY = viewOrigin.y;

    viewOriginX = viewOriginX == desiredOriginX ? viewOriginX :
                                                desiredOriginX;

    viewOriginY = viewOriginY == desiredOriginY ? viewOriginY :
                                                desiredOriginY;

    viewWidth = viewWidth == desiredWidth ? viewWidth :
                                          desiredWidth;

    viewHeight = viewHeight == desiredHeight ? viewHeight :
                                             desiredHeight;

    CGRect desiredFrame = CGRectMake(viewOriginX, viewOriginY, viewWidth, viewHeight);

    viewFrame = CGRectEqualToRect(viewFrame, desiredFrame) ? viewFrame :
                                                           desiredFrame;
    return viewFrame;
}


+ (CGRect)frameForSlideShow:(KASlideShow *)slideshow {

    //  Need to zero out slideshow's origin so that it matches its superview's (container)

    CGRect slideshowFrame = slideshow.frame;
    CGPoint slideshowOrigin = slideshowFrame.origin;

    slideshowFrame.origin = CGPointEqualToPoint(slideshowOrigin, CGPointZero) ? slideshowOrigin :
                                                                                     CGPointZero;

    

    return slideshowFrame;
}


@end
