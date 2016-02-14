//
//  ViewController.m
//  HighSpeedDone
//
//  Created by 郑东喜 on 16/2/14.
//  Copyright © 2016年 郑东喜. All rights reserved.
//

#import "ViewController.h"
#import <iOS/iOS.h>

@interface ViewController () {
    NSArray* _scImg;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _scImg = @[@"http://192.168.6.124/zxtxs/img/home_icon/circle3.jpg",
               @"http://imgsrc.baidu.com/forum/pic/item/88d10057f9abb24297ca6be2.jpg",
               @"http://192.168.6.124/zxtxs/img/home_icon/circle2.jpg",
               @"http://192.168.6.124/zxtxs/img/home_icon/circle3.jpg",
               @"http://imgsrc.baidu.com/forum/pic/item/88d10057f9abb24297ca6be2.jpg",
               @"http://192.168.6.124/zxtxs/img/home_icon/circle3.jpg",
               @"http://www.ynepb.gov.cn/color/contentimage/8582/104-1.jpg",
               ];
    
    DCPicScrollView* picView = [DCPicScrollView picScrollViewWithFrame:self.view.bounds WithImageUrls:_scImg];
    [self.view addSubview:picView];
    
    [picView setImageViewDidTapAtIndex:^(NSInteger a) {
        NSLog(@"%ld",(long)a);
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
