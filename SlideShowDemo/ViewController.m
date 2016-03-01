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

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet SlideshowContainer *container;

@end

@implementation ViewController {

    KASlideShow *slideshow;
}

- (void)viewDidLayoutSubviews {

    _titleLabel.frame = [Framer frameForTitleLabel:_titleLabel];

    //  -setTranslatesAutoresizing.. may need to be called on all subviews of self.view
    [_container setTranslatesAutoresizingMaskIntoConstraints:NO];
    _container.frame = [Framer frameForContainer:_container];

    if (_container.slideShow == nil) {
        _container.slideShow = [[KASlideShow alloc]initWithFrame:_container.frame];
        UIImage *image1 = [UIImage imageNamed:@"TV-Face-Swap"];
        UIImage *image2 = [UIImage imageNamed:@"guy_and_girl"];
        UIImage *image3 = [UIImage imageNamed:@"baby_and_dude"];

        NSArray *images = @[image1, image2, image3];
        [_container animateWithImages:images];
        [self.view addSubview:_container.slideShow];
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
}


@end
