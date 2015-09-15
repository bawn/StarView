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
    
//    self.view.backgroundColor = [UIColor whiteColor];
//    UIImage* imageWithAlphaChannel = [UIImage imageNamed:@"Path 6"]; // Won't work with jpg
//
//    UIImageView *bgView = [[UIImageView alloc] init];
//    
//    bgView.backgroundColor = [UIColor clearColor];
//    bgView.frame = CGRectMake(0, 0, imageWithAlphaChannel.size.width, imageWithAlphaChannel.size.height);
//    bgView.image = [UIImage imageNamed:@"F32"];
//    
//    
////    UIImage *image = [UIImage imageNamed:@"ed639409gw1ew22qq6ltdj20go0b2zkl.jpg"];
//    self.bgView = [[UIView alloc] init];
//    [self.bgView addSubview:bgView];
//    [self.view addSubview:_bgView];
//    
//    self.bgView.backgroundColor = [UIColor whiteColor];
//    self.bgView.frame = CGRectMake(100, 100, imageWithAlphaChannel.size.width, imageWithAlphaChannel.size.height);
// 
//    CALayer* maskingLayer = [CALayer layer];
//    maskingLayer.contents = (id)[imageWithAlphaChannel CGImage];
//    maskingLayer.frame = CGRectMake(0,0, imageWithAlphaChannel.size.width, imageWithAlphaChannel.size.height);
//
//    self.bgView.layer.mask = maskingLayer;
//
//
////    self.view.layer.borderColor
//    UIView *rqe = [[UIView alloc] init];
//    rqe.backgroundColor = [UIColor colorWithRed:0.94 green:0.27 blue:0.32 alpha:1];
//    rqe.frame = CGRectMake(0, 0, imageWithAlphaChannel.size.width, imageWithAlphaChannel.size.height);
//    [self.bgView addSubview:rqe];
//    rqe.layer.cornerRadius = imageWithAlphaChannel.size.width * 0.5f;
//    rqe.transform = CGAffineTransformMakeScale(0, 0);
////    rqe.center = _bgView.center;
////    [self.view sendSubviewToBack:rqe];
//    
//    [UIView animateWithDuration:1.0f delay:2 options:UIViewAnimationOptionCurveEaseIn animations:^{
//        rqe.transform = CGAffineTransformMakeScale(2, 2);
//        //        self.view.backgroundColor = [UIColor redColor];
//    } completion:NULL];
    
    
    UIImage *maskImage = [UIImage imageNamed:@"btn_link_fill"];
    UIImage *lineImage = [UIImage imageNamed:@"btn_link_line"];
    
    LCStarView *starView = [[LCStarView alloc] init];
    starView.frame = CGRectMake(100, 100, maskImage.size.width, maskImage.size.height);
    starView.maskImage = maskImage;
    starView.borderImage = lineImage;
    starView.fillColor = [UIColor colorWithRed:0.94 green:0.27 blue:0.32 alpha:1];
    [self.view addSubview:starView];


}


- (IBAction)fafa:(id)sender{
    CADisplayLink *line = [CADisplayLink displayLinkWithTarget:self selector:@selector(chan)];
    [line addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
}
- (void)chan{
//    UIView *view = self.view.subviews.firstObject;
//    self.bgView.frame = CGRectMake(100, 100, _number++, _number++);
//    NSLog(@"%@", NSStringFromCGRect(_bgView.frame));
    //        bgView.image = [UIImage imageNamed:@"ed639409gw1ew22qq6ltdj20go0b2zkl.jpg"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
