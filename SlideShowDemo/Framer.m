//
//  Framer.m
//  SlideShowDemo
//
//  Created by Glen Ruhl on 2/27/16.
//  Copyright © 2016 intradine. All rights reserved.
//

#import "Framer.h"


@implementation Framer


+ (CGRect)frameForTitleLabel:(UILabel *)label {

    CGRect labelFrame = label.frame;
    CGRect superFrame = label.superview.frame;
    CGSize superSize = superFrame.size;

    CGFloat superWidth = superSize.width;
    CGFloat superHeight = superSize.height;

    CGPoint labelOrigin = labelFrame.origin;
    CGFloat labelOriginX = labelOrigin.x;
    CGFloat labelOriginY = labelOrigin.y;





    CGFloat desiredOriginX = superWidth * .17f;




    CGFloat desiredOriginY = superHeight * .08f;

    labelOriginX = labelOriginX == desiredOriginX ? labelOriginX :
                                                   desiredOriginX;

    labelOriginY = labelOriginY == desiredOriginY ? labelOriginY :
                                                   desiredOriginY;

    labelFrame.origin = CGPointMake(labelOriginX, labelOriginY);
    labelFrame.size = [Framer fittedSizeForLabel:label];

    return labelFrame;
}


+ (CGSize)fittedSizeForLabel:(UILabel *)label {

    UILabel *dummyLabel = [UILabel new];
    dummyLabel.text = label.text;
    dummyLabel.font = label.font;

    NSLog(@"dummyLabel == %@", dummyLabel);

    [dummyLabel sizeToFit];
    CGSize actualLabelSize = label.frame.size;
    CGSize dummyLabelSize = dummyLabel.frame.size;

    if (CGSizeEqualToSize(actualLabelSize, dummyLabelSize))
        return actualLabelSize;
    else
        return dummyLabelSize;
}


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

    CGFloat desiredOriginX = superWidth * .14f;
    CGFloat desiredOriginY = superHeight * .15f;

    CGFloat desiredWidth = superWidth - (desiredOriginX * 2);
    CGFloat desiredHeight = superHeight * .32f;

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
    CGFloat slideshowOriginX = slideshowOrigin.x;

    slideshowOriginX = slideshowOriginX == 0 ? slideshowOriginX :
                                                               0;
    slideshowOrigin.x = slideshowOriginX;



//    slideshowOrigin = CGPointEqualToPoint(slideshowOrigin, CGPointZero) ? slideshowOrigin :
//                                                                               CGPointZero;

    slideshowFrame.origin = slideshowOrigin;
    return slideshowFrame;
}


@end
