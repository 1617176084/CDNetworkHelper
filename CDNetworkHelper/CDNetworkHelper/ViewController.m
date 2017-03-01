//
//  ViewController.m
//  CDNetworkHelper
//
//  Created by Apple on 17/3/1.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "CDNetworkHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [CDNetworkHelper POST:@"" parameters:NULL success:NULL failure:NULL];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
