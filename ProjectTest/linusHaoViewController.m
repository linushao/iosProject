//
//  linusHaoViewController.m
//  ProjectTest
//
//  Created by linushao on 14-12-1.
//  Copyright (c) 2014年 ioslearning. All rights reserved.
//

#import "linusHaoViewController.h"

@interface linusHaoViewController ()

@end

@implementation linusHaoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self dotImageset];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//所有场景都回退到这里
- (IBAction)exitHere:(UIStoryboardSegue *)sender
{
    
}

- (void)dotImageset
{
//    [_dotImage setImage:[UIImage imageNamed:@"dotImage.png"]];
}

@end
