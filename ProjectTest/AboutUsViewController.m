//
//  AboutUsViewController.m
//  ProjectTest
//
//  Created by linushao on 14-12-1.
//  Copyright (c) 2014年 ioslearning. All rights reserved.
//

#import "AboutUsViewController.h"

@interface AboutUsViewController ()

@end

@implementation AboutUsViewController

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)addImageView
{
    int i = 0;
    for (; i < 6; i++) {
        //加载图片
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0 + i*_ScrollSlide.frame.size.width, 0, _ScrollSlide.frame.size.width, _ScrollSlide.frame.size.height)];
        NSString *imageName = [NSString stringWithFormat:@"%d.jpg",i+1];
        [imageView setImage:[UIImage imageNamed:imageName]];
        [_ScrollSlide addSubview:imageView];
    }
    
//    _ScrollSlide.backgroundColor = [UIColor yellowColor];
    _ScrollSlide.contentSize = CGSizeMake(_ScrollSlide.bounds.size.width*i, _ScrollSlide.bounds.size.height);
    _ScrollSlide.scrollEnabled = YES;
    _ScrollSlide.pagingEnabled = YES;
    _ScrollSlide.maximumZoomScale = 2;
    _ScrollSlide.minimumZoomScale = 0.5;
}


- (IBAction)ReturnFirstView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
