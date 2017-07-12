//
//  ViewController.m
//  TwitterLaunchView
//
//  Created by TouchWorld on 2017/7/9.
//  Copyright © 2017年 cxz. All rights reserved.
//

#import "ViewController.h"
#import "NJLaunchView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [NJLaunchView addLaunchView];
}


@end
