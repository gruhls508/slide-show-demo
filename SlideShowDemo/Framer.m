//
//  Framer.m
//  SlideShowDemo
//
//  Created by Glen Ruhl on 2/27/16.
//  Copyright © 2016 intradine. All rights reserved.
//

#import "Framer.h"
#import <UIKit/UIKit.h>

@implementation Framer

+ (CGRect)frameForImageView:(UIImageView *)imageView {

    CGRect viewFrame = imageView.frame;
    CGRect superFrame = imageView.superview.frame;
    CGSize superSize = superFrame.size;

    CGFloat superWidth = superSize.width;
    CGFloat superHeight = superSize.height;

    CGPoint viewOrigin = viewFrame.origin;
    CGSize viewSize = viewFrame.size;

    CGFloat desiredOriginX = superWidth * .2f;
    CGFloat desiredOriginY = superHeight * .15f;

    CGFloat desiredWidth = superWidth - (desiredOriginX * 2);
    CGFloat desiredHeight = superHeight - (desiredOriginY * 2);


    CGFloat viewOriginX = viewOrigin.x;
    CGFloat viewOriginY = viewOrigin.y;

    viewOriginX = viewOriginX == desiredOriginX ? viewOriginX :
                                                desiredOriginX;

    viewOriginY = viewOriginY == desiredOriginY ? viewOriginY :
                                                desiredOriginY;




    return viewFrame;
}





@end
