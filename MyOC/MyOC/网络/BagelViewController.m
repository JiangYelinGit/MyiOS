//
//  BagelViewController.m
//  MyOC
//
//  Created by jiangyelin on 2019/10/11.
//  Copyright © 2019 XinChan. All rights reserved.
//

#import "BagelViewController.h"
#import <Bagel/Bagel.h>
#import <AFNetworking/AFNetworking.h>

@interface BagelViewController ()

@end

@implementation BagelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#if DEBUG
    [Bagel start];
#endif
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSString *urlString = @"http://www.baidu.com";
    NSDictionary *parameters = @{};
    [manager GET:urlString parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
