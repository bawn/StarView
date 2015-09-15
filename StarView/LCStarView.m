//
//  LCStarView.m
//  StarView
//
//  Created by bawn on 9/15/15.
//  Copyright (c) 2015 bawn. All rights reserved.
//

#import "LCStarView.h"

@interface LCStarView ()

@property (nonatomic, strong) CALayer *maskLayer;
@property (nonatomic, strong) UIImageView *borderImageView;
@property (nonatomic, strong) UITapGestureRecognizer *tap;
@property (nonatomic, strong) UIView *fillView;

@end
@implementation LCStarView

- (instancetype)init{
    self = [super init];
    if (self) {
        [self initUI];
        
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self initUI];
    }
    return self;
}

- (void)initUI{
    _tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapView:)];
    [self addGestureRecognizer:_tap];
}


- (void)setMaskImage:(UIImage *)maskImage{
    _maskImage = maskImage;
    if (!_maskLayer) {
        self.maskLayer = [CALayer layer];
        self.maskLayer.frame = CGRectMake(0,0, _maskImage.size.width, _maskImage.size.height);
        self.layer.mask = _maskLayer;
    }
    self.maskLayer.contents = (id)[_maskImage CGImage];
}

- (void)setBorderImage:(UIImage *)borderImage{
    _borderImage = borderImage;
    if (!_borderImageView) {
        self.borderImageView = [[UIImageView alloc] init];
        self.borderImageView.frame = CGRectMake(0,0, _borderImage.size.width, _borderImage.size.height);
        [self addSubview:_borderImageView];
    }
    self.borderImageView.image = _borderImage;
    [self sendSubviewToBack:_borderImageView];
}

- (void)setFillColor:(UIColor *)fillColor{
    _fillColor = fillColor;
    if (!_fillView) {
        self.fillView = [[UIView alloc] initWithFrame:self.bounds];
        self.fillView.layer.cornerRadius = self.bounds.size.width * 0.5f;
        self.fillView.transform = CGAffineTransformMakeScale(0, 0);
        [self addSubview:_fillView];
    }
    self.fillView.backgroundColor = _fillColor;
}


- (void)tapView:(UITapGestureRecognizer *)tapGestureRecognizer{
    self.userInteractionEnabled = NO;
    if (CGAffineTransformIsIdentity(_fillView.transform)) {
        [UIView animateWithDuration:0.25f delay:0 options:UIViewAnimationOptionCurveLinear animations:^{
           self.fillView.transform = CGAffineTransformMakeScale(FLT_MIN, FLT_MIN);
        } completion:^(BOOL finished) {
            self.userInteractionEnabled = YES;
        }];
    }
    else{
        [UIView animateWithDuration:0.35f delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            self.fillView.transform = CGAffineTransformMakeScale(1, 1);
        } completion:^(BOOL finished) {
            self.userInteractionEnabled = YES;
        }];
    }
}

@end
