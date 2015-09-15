//
//  ViewController.m
//  StarView
//
//  Created by bawn on 9/11/15.
//  Copyright (c) 2015 bawn. All rights reserved.
//

#import "ViewController.h"
#import "LCStarView.h"
@interface ViewController ()

@property (nonatomic, assign) CGFloat number;
@property (nonatomic, strong) UIView *bgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    
    UIImage *maskImage = [UIImage imageNamed:@"btn_link_fill"];
    UIImage *lineImage = [UIImage imageNamed:@"btn_link_line"];
    
    LCStarView *starView = [[LCStarView alloc] init];
    starView.frame = CGRectMake(100, 100, maskImage.size.width, maskImage.size.height);
    starView.maskImage = maskImage;
    starView.borderImage = lineImage;
    starView.fillColor = [UIColor colorWithRed:0.94 green:0.27 blue:0.32 alpha:1];
    [self.view addSubview:starView];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
