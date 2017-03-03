//
//  ViewController.m
//  CDNetworkHelper
//
//  Created by Apple on 17/3/1.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "CDNetworkHelper.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
    // 关注所有请求失败的回调
    [CDNetworkHelper requestAllFailure:^(NSError *error) {
        NSLog(@"requestAllFailure");
    }];
    // 关注所有请求成功的回调
    [CDNetworkHelper requestAllSuccess:^(id responseObject) {
        NSLog(@"requestAllSuccess");
    }];
    
  [CDNetworkHelper GET:@"http://gc.ditu.aliyun.com/regeocoding?l=39.938133,116.395739&type=001" parameters:NULL success:^(id responseObject) {
      NSLog(@"responseObject %@",responseObject);
  } failure:^(NSError *error) {
        NSLog(@"error %@",error);
  }];
    // 关闭URL请求时的UTF_8编码规则处理
    //注意：  如网址含有不符合URL编码规则的地址会崩溃
   // [CDNetworkHelper closeLogUriUTF_8Format];
    
    [CDNetworkHelper GET:@"http://gc.ditu.aliyun.com/geocoding?a=苏州市" parameters:NULL success:^(id responseObject) {
        NSLog(@"responseObject %@",responseObject);
    } failure:^(NSError *error) {
        NSLog(@"error %@",error);
    }];
 
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
