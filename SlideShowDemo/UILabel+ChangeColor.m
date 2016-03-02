//
//  UILabel+ChangeColor.m
//  SlideShowDemo
//
//  Created by Glen Ruhl on 3/1/16.
//  Copyright © 2016 intradine. All rights reserved.
//

#import "UILabel+ChangeColor.h"

@implementation UILabel (ChangeColor)


//  May add an 'int' param here so that a timer can feed ints which will be used by the function
//  to determine which color to return.
+ (UIColor *)initialTextColor {


    //  Initial color
    UIColor *color = [UIColor colorWithRed:145.0f/225.0f green:255.0f/255.0f blue:102.0f/255.0f alpha:1.0f];

    return color;
}




@end
