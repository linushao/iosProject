//
//  imageBrowserViewController.m
//  ProjectTest
//
//  Created by linushao on 14-12-8.
//  Copyright (c) 2014年 ioslearning. All rights reserved.
//

#import "imageBrowserViewController.h"

@interface imageBrowserViewController ()
{
    UIImageView *_imageView;
}

@end

@implementation imageBrowserViewController

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

- (void)addImageView
{
    NSLog(@"success");
    
    // 1.添加UIScrollView
    UIScrollView *_ScrollSlide = [[UIScrollView alloc] init];
    
    [_ScrollSlide setFrame:CGRectMake(self.view.frame.size.height*0.075, self.view.frame.size.width*0.075, self.view.frame.size.height*0.85, self.view.frame.size.width*0.85)];
    
    _ScrollSlide.contentSize = CGSizeMake(_ScrollSlide.bounds.size.width*3, _ScrollSlide.bounds.size.height);
//    _ScrollSlide.scrollEnabled = YES;
//    _ScrollSlide.pagingEnabled = YES;
//    _ScrollSlide.maximumZoomScale = 2;
//    _ScrollSlide.minimumZoomScale = 0.5;
    
    [self.view addSubview:_ScrollSlide];
    
    // 2.添加图片
    UIImage *image = [UIImage imageNamed:@"1.jpg"];
    // 调用initWithImage:方法创建出来的UIImageView，它的宽高默认跟图片的宽高一样
    _imageView = [[UIImageView alloc] initWithImage:image];

    // 设置frame
    _imageView.frame = CGRectMake(0, 0, _ScrollSlide.frame.size.width, _ScrollSlide.frame.size.height);
    [_ScrollSlide addSubview:_imageView];
    
    // 设置内容范围
//    _ScrollSlide.contentSize = image.size;
    
    // 设置scrollview的代理对象
    _ScrollSlide.delegate = self;
    
    // 设置最大伸缩比例
    _ScrollSlide.maximumZoomScale = 2.0;
    // 设置最小伸缩比例
    _ScrollSlide.minimumZoomScale = 0.2;
    //设置可以拖拉
    _ScrollSlide.scrollEnabled = YES;
    //设置整页滑动
    _ScrollSlide.pagingEnabled = YES;
    //设置背景颜色
    _ScrollSlide.backgroundColor = [UIColor yellowColor];

}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return _imageView;
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

- (IBAction)returnView:(id)sender {
    NSLog(@"return view");
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
