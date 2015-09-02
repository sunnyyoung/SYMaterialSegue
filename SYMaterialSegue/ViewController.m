//
//  ViewController.m
//  SYMaterialSegue
//
//  Created by Sunnyyoung on 15/8/21.
//  Copyright (c) 2015年 GeekBean Technology Co., Ltd. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "SYMaterialModalSegue.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"MaterialModal"]) {
        ((SYMaterialModalSegue *)segue).sourceButton = self.button;
        ((SYMaterialModalSegue *)segue).animateColor = [UIColor colorWithRed:37/255.0 green:173/255.0 blue:231/255.0 alpha:1.0];
    }
}

@end
