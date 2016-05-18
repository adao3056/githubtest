//
//  MeViewController.m
//  快乐益
//
//  Created by apple on 16/5/15.
//  Copyright © 2016年 戴维营. All rights reserved.
//

#import "MeViewController.h"
#import "cusTomUIView.h"
#import "Masonry.h"

@interface MeViewController ()

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    cusTomUIView *view1 = [[cusTomUIView alloc]init];
    NSArray *arr = @[@"机构",@"基金会",@"会议",@"你大爷",@"你妹"];
    view1.items = arr;
    [self.view addSubview:view1];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.height.equalTo(@60);
    }];
    
    
    
    
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.tabBarItem.title = @"Me";
        self.tabBarItem.image = [[UIImage imageNamed:@"iconfont-my"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        self.tabBarItem.selectedImage = [[UIImage imageNamed:@"iconfont-myh"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    return self;
}


@end
