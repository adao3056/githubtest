//
//  OrganizationViewController.m
//  快乐益
//
//  Created by apple on 16/5/15.
//  Copyright © 2016年 戴维营. All rights reserved.
//

#import "OrganizationViewController.h"

@interface OrganizationViewController ()

@end

@implementation OrganizationViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor redColor];
    
//    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithTitle:@"机构" style:UIBarButtonItemStylePlain target:nil action:nil];
//    UIBarButtonItem *item1 = [[UIBarButtonItem alloc]initWithTitle:@"基金会" style:UIBarButtonItemStylePlain target:nil action:nil];
//    UIBarButtonItem *item2 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil
//                              ];
//    UIBarButtonItem *item3 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil
//                              ];
//    item3.width = 70;
//    
//    self.navigationItem.leftBarButtonItems = @[item2,item,item3,item1,item2];
    
//    self.navigationController.view.frame = CGRectMake(0, 0, 100, 40);
//    


}


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.tabBarItem.title = @"Organization";
        self.tabBarItem.image = [[UIImage imageNamed:@"iconfont-NGO"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        self.tabBarItem.selectedImage = [[UIImage imageNamed:@"iconfont-NGOh"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    return self;
}


@end
