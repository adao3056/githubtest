//
//  OpenViewController.m
//  快乐益
//
//  Created by apple on 16/5/15.
//  Copyright © 2016年 戴维营. All rights reserved.
//

#import "OpenViewController.h"
#import "SDCycleScrollView.h"
#import "HappyiViewController.h"
#import "MeViewController.h"
#import "OrganizationViewController.h"

@interface OpenViewController ()<SDCycleScrollViewDelegate>
{
    
    UIScrollView *demoContainerView;
    UITabBarController *tabbarCtrl;

}

@end

@implementation OpenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSMutableArray *tabbarArray = [NSMutableArray array];
    NSArray *ViewCtrlarray = @[@"HappyiViewController",@"OrganizationViewController",@"MeViewController"];
    for (NSString *ViewCtrlstring in ViewCtrlarray) {
        
        Class cls = NSClassFromString(ViewCtrlstring);
        UINavigationController *navCtrl = [[UINavigationController alloc]initWithRootViewController:[cls new]];
        [tabbarArray addObject:navCtrl];
    }
    
    
    tabbarCtrl = [[UITabBarController alloc]init];
    tabbarCtrl.viewControllers = tabbarArray;
    
    self.view.backgroundColor = [UIColor colorWithRed:0.98 green:0.98 blue:0.98 alpha:0.99];

    demoContainerView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    
    demoContainerView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height);
    
    [self.view addSubview:demoContainerView];
    
    self.title = @"轮播Demo";
    
    NSArray *imageNames = @[@"1.jpg",
                            @"2.jpg",
                            @"3.jpg",
                            ];
    
    // 本地加载 --- 创建不带标题的图片轮播器
    SDCycleScrollView *cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:self.view.frame shouldInfiniteLoop:YES imageNamesGroup:imageNames];
    cycleScrollView.delegate = self;
    cycleScrollView.pageControlStyle = SDCycleScrollViewPageContolStyleAnimated;
    [demoContainerView addSubview:cycleScrollView];
    cycleScrollView.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    //         --- 轮播时间间隔，默认1.0秒，可自定义

}


- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didScrollToIndex:(NSInteger)index{

    NSLog(@" index = %ld",index);
    if (index == 2) {
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectZero];
        [button setTitle:@"立即开始" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
        button.backgroundColor = [UIColor redColor];
        [cycleScrollView addSubview:button];
        
        button.frame = CGRectMake(170, 600, 100, 40);
        cycleScrollView.autoScroll = NO;
        
        
        [button addTarget:self action:@selector(Buttonclick) forControlEvents:UIControlEventTouchUpInside];

    }


}


- (void)Buttonclick{
    
    tabbarCtrl.tabBar.barTintColor = [UIColor whiteColor];

    self.view.window.rootViewController = tabbarCtrl;

}

#pragma mark - SDCycleScrollViewDelegate

- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    NSLog(@"---点击了第%ld张图片", (long)index);
    
    [self.navigationController pushViewController:[NSClassFromString(@"DemoVCWithXib") new] animated:YES];
}






@end
