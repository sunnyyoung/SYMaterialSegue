//
//  SYMaterialModalSegue.m
//  SYMaterialSegue
//
//  Created by Sunnyyoung on 15/8/21.
//  Copyright (c) 2015年 GeekBean Technology Co., Ltd. All rights reserved.
//

#import "SYMaterialModalSegue.h"

@implementation SYMaterialModalSegue

- (void)perform {
    UIViewController *destinationViewController = self.destinationViewController;
    
    UIView *materialView = ({
        CGRect viewFrame = self.sourceButton.frame;
        CGFloat width = MAX(CGRectGetWidth(self.sourceButton.frame), CGRectGetHeight(self.sourceButton.frame));
        viewFrame.size = CGSizeMake(width, width);
        UIView *view = [[UIView alloc] initWithFrame:viewFrame];
        view.backgroundColor = self.animateColor;
        view.layer.cornerRadius = width/2.0;
        view;
    });

    [[UIApplication sharedApplication].keyWindow addSubview:materialView];
    
    CGFloat size = MAX(CGRectGetHeight(destinationViewController.view.frame),
                       CGRectGetWidth(destinationViewController.view.frame)) * 2.0;
    CGFloat scale = size / CGRectGetWidth(materialView.frame);
    CGAffineTransform finalTransform = CGAffineTransformMakeScale(scale, scale);
    
    [UIView animateWithDuration:0.5 animations:^{
        materialView.transform = finalTransform;
        materialView.center = destinationViewController.view.center;
        materialView.backgroundColor = destinationViewController.view.backgroundColor;
    } completion:^(BOOL finished) {
        //显示ViewController
        [self.sourceViewController presentViewController:destinationViewController animated:NO completion:nil];
        [UIView animateWithDuration:0.25 animations:^{
            materialView.alpha = 0.0;
        } completion:^(BOOL finished) {
            [materialView removeFromSuperview];
        }];
    }];
}

@end
