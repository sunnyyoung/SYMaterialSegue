//
//  SecondViewController.m
//  SYMaterialSegue
//
//  Created by Sunnyyoung on 15/8/28.
//  Copyright (c) 2015年 GeekBean Technology Co., Ltd. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buttonAction:(id)sender {
    self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
