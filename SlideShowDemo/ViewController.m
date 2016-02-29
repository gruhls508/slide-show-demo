//
//  ViewController.m
//  SlideShowDemo
//
//  Created by Glen Ruhl on 2/27/16.
//  Copyright © 2016 intradine. All rights reserved.
//

#import "ViewController.h"
#import "SlideshowContainer.h"
#import "Framer.h"
#import "UIView+translateMask.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet SlideshowContainer *container;

@end

@implementation ViewController {

    KASlideShow *slideshow;
}

- (void)viewDidLayoutSubviews {


    //  Set 'slideshow' to _container.slideshow here

    [_container setTranslatesAutoresizingMaskIntoConstraints:NO];

    _container.frame = [Framer frameForContainer:_container];
    _container.slideShow.frame = _container.frame;
//    _container.slideShow.frame = [Framer frameForSlideShow:_container.slideShow];




    NSLog(@"_container == %@", _container);
}


- (void)viewDidLoad {
    [super viewDidLoad];

    UIImage *image1 = [UIImage imageNamed:@"TV-Face-Swap"];
    UIImage *image2 = [UIImage imageNamed:@"guy_and_girl"];
    UIImage *image3 = [UIImage imageNamed:@"baby_and_dude"];

    NSArray *images = @[image1, image2, image3];

    [_container animateWithImages:images];

    NSLog(@"_container.slideshow == %@", _container.slideShow);
    [self.view addSubview:_container.slideShow];
}





@end
