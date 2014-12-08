//
//  CorporateImageViewController.m
//  ProjectTest
//
//  Created by linushao on 14-12-2.
//  Copyright (c) 2014年 ioslearning. All rights reserved.
//

#import "CorporateImageViewController.h"

@interface CorporateImageViewController ()

@end

@implementation CorporateImageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addImageView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addImageView
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, _ScrollSlide.frame.size.width, _ScrollSlide.frame.size.height)];
    [imageView setImage:[UIImage imageNamed:@"1.jpg"]];
    
    _ScrollSlide.backgroundColor = [UIColor yellowColor];
    _ScrollSlide.contentSize = CGSizeMake(_ScrollSlide.bounds.size.width*3, _ScrollSlide.bounds.size.height);
    _ScrollSlide.scrollEnabled = YES;
    _ScrollSlide.pagingEnabled = YES;
    _ScrollSlide.maximumZoomScale = 2;
    _ScrollSlide.minimumZoomScale = 0.5;
    
    
    [_ScrollSlide addSubview:imageView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
