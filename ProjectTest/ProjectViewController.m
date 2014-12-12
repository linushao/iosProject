//
//  ProjectViewController.m
//  ProjectTest
//
//  Created by linushao on 14-12-2.
//  Copyright (c) 2014年 ioslearning. All rights reserved.
//

#import "ProjectViewController.h"

@interface ProjectViewController (){
    UIImageView *imageView;
    UIScrollView *scrollImageView;
    UIImageView *sImageView;
}

@end

@implementation ProjectViewController

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
    
    [self addImage];
    [self addScrollslide];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addImage
{
//    NSMutableArray *tempArray = [NSMutableArray new];
    
    for (int i = 0; i < 6; i++) {
        imageView = [UIImageView new];
        if (i%6 < 3) {
            //加载上层图片
            
            //加载图片
            [imageView setFrame:CGRectMake(0 + 300*(i%3), 51, 270, 181)];
            NSString *imageName = [NSString stringWithFormat:@"%d.jpg",i%6+1];
            [imageView setImage:[UIImage imageNamed:imageName]];
            
            [_ScrollSlide addSubview:imageView];
            
            //加载label文字
            UILabel *projectName = [[UILabel alloc]initWithFrame:CGRectMake(80 + 300*(i%3), 240, 150, 21)];
            projectName.text = @"project name";
            [_ScrollSlide addSubview:projectName];
            
        } else {
            //加载下层图片
            
            //加载图片
            [imageView setFrame:CGRectMake(0 + 300*(i%3), 340, 270, 181)];
            NSString *imageName = [NSString stringWithFormat:@"%d.jpg",i%6+1];
            [imageView setImage:[UIImage imageNamed:imageName]];
            [_ScrollSlide addSubview:imageView];
            
            //加载label文字
            UILabel *projectName = [[UILabel alloc]initWithFrame:CGRectMake(80+ 300*(i%3), 530, 150, 21)];
            projectName.text = @"project name";
            [_ScrollSlide addSubview:projectName];
        }
        
        //添加点击事件
        NSLog(@"%d",i);
        imageView.userInteractionEnabled = YES;
        [imageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(BtnClick:)] ];
    }
    
}

- (void)addScrollslide
{
//    _ScrollSlide.backgroundColor = [UIColor yellowColor];
    _ScrollSlide.contentSize = CGSizeMake(_ScrollSlide.bounds.size.width*3, _ScrollSlide.bounds.size.height);
    _ScrollSlide.scrollEnabled = YES;
    _ScrollSlide.pagingEnabled = YES;
//    _ScrollSlide.contentOffset = CGPointMake(_ScrollSlide.frame.size.width, 0);
//    _ScrollSlide.maximumZoomScale = 2;
//    _ScrollSlide.minimumZoomScale = 0.5;
}


//处理单指事件
- (void)BtnClick:(UITapGestureRecognizer *)imageTap
{
    NSLog(@"11111111");
    [self performSegueWithIdentifier:@"imageBrowser" sender:self];
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
