//
//  Framer.h
//  SlideShowDemo
//
//  Created by Glen Ruhl on 2/27/16.
//  Copyright © 2016 intradine. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "KASlideShow.h"

@interface Framer : NSObject

+ (CGRect)frameForContainer:(UIView *)container;

@end
