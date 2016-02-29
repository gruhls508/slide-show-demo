//
//  ViewController.m
//  SlideShowDemo
//
//  Created by Glen Ruhl on 2/27/16.
//  Copyright © 2016 intradine. All rights reserved.
//

#import "ViewController.h"
#import "AnimatingImageView.h"
#import "Framer.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet AnimatingImageView *imageView;

@end

@implementation ViewController




- (void)viewDidLayoutSubviews {


    _imageView.frame = [Framer frameForImageView:_imageView];
    NSLog(@"_imageView == %@", _imageView);
//    _imageView.backgroundColor = [UIColor groupTableViewBackgroundColor];

}




- (void)viewDidLoad {
    [super viewDidLoad];





}





@end
