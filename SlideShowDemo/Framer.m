//
//  Framer.m
//  SlideShowDemo
//
//  Created by Glen Ruhl on 2/27/16.
//  Copyright © 2016 intradine. All rights reserved.
//

#import "Framer.h"

@implementation Framer

+ (CGRect)frameForImageView:(UIImageView *)imageView {

    CGRect viewFrame = imageView.frame;
    CGRect superFrame = imageView.superview.frame;
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




    NSLog(@"viewWidth == %f, superview == %@", viewWidth, imageView.superview);




    viewHeight = viewHeight == desiredHeight ? viewHeight :
                                             desiredHeight;

    CGRect desiredFrame = CGRectMake(viewOriginX, viewOriginY, viewWidth, viewHeight);

    viewFrame = CGRectEqualToRect(viewFrame, desiredFrame) ? viewFrame :
                                                           desiredFrame;
    return viewFrame;
}





@end
