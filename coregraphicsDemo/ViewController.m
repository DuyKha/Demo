//
//  ViewController.m
//  coregraphicsDemo
//
//  Created by Duy Kha on 5/20/15.
//  Copyright (c) 2015 Duy Kha. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CustomView *customview = [[CustomView alloc] initWithFrame:CGRectMake(0, 100, 320, 40)];
    [customview setArrowPoint:CGPointMake(100, 10)];
    [customview setArrowHeight:7.5];
    [customview setBackgroundColor:[UIColor clearColor]];
    [self.view addSubview:customview];
    [self.view setBackgroundColor:[UIColor grayColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
