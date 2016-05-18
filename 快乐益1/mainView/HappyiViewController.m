//
//  ViewController.m
//  快乐益
//
//  Created by apple on 16/5/15.
//  Copyright © 2016年 戴维营. All rights reserved.
//
#import "customCell2.h"
#import "HappyiViewController.h"
#import "Masonry.h"
#import "SDCycleScrollView/SDCycleScrollView.h"
#import "customCell.h"

@interface HappyiViewController ()<UITableViewDataSource,UITableViewDelegate,SDCycleScrollViewDelegate>
{

    UITableView *tableView1;
    UIScrollView *containerView ;
    SDCycleScrollView *cycleScrollView;

}

@end

@implementation HappyiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];

    //2. 真正设置导航栏的颜色
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 90, 40)];
    UILabel *label = [UILabel new];
    label.text = @"快乐益";
    
    label.textColor = [UIColor blackColor];
    label.font  = [UIFont systemFontOfSize:25];
    [view addSubview:label];
    label.frame  = view.frame;
    self.navigationItem.titleView = view;
    
    UIImage *image = [UIImage imageNamed:@"iconfont-sousuo"];
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithImage:[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.rightBarButtonItem = item;
    
    
    
    tableView1 = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStylePlain];
    tableView1.delegate = self;
    tableView1.dataSource = self;
    tableView1.rowHeight = UITableViewAutomaticDimension;
    tableView1.estimatedRowHeight = 2;
    
    [tableView1 registerClass:[customCell2 class]
       forCellReuseIdentifier:@"cell"];
    
    [self.view addSubview:tableView1];
    
    [tableView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).offset(0);
        make.left.right.bottom.equalTo(self.view);
        
    }];
    [self  creatSrollview];
    tableView1.tableHeaderView = cycleScrollView;
    tableView1.sectionHeaderHeight = 50;

}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    
    
    NSArray *bbarray = @[@"推荐活动",@"明星公益",@"亲子活动",@"青年社交",@"乡村体验",@"自然环保",@"健康运动",@"慈善捐助",@"爱心助学",@"文化艺术"];
    UIScrollView *view1 = [UIScrollView new];
    view1.contentSize = CGSizeMake(900, 40);
    for (int i = 0; i<10; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        [button setTitle:bbarray[i] forState:UIControlStateNormal];
        [view1 addSubview:button];
        
        [button mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.left.equalTo(view1).offset(i*90);
            make.top.equalTo(view1).offset(10);
            
        }];
        [button addTarget:self action:@selector(buttomClick:) forControlEvents:UIControlEventTouchUpInside];
        
    }

    return view1;
}


-(void)creatSrollview{
    
    NSArray *imagesURLStrings = @[
                                  @"http://d.3987.com/zhangxin_150310/desk_012.jpg",
                                  @"http://d.3987.com/zhangxin_150310/desk_012.jpg",
                                  @"http://d.3987.com/zhangxin_150310/desk_012.jpg"
                                  ];
    
    // 图片配文字
    NSArray *titles = @[@"感谢您的支持，如果下载的",
                        @"如果代码在使用过程中出现问题",
                        @"您可以发邮件到gsdios@126.com",
                        @"感谢您的支持"
                        ];
//    cycleScrollView.contentSize = CGSizeMake(self.view.frame.size.width, 350);

    cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, 350) delegate:self placeholderImage:[UIImage imageNamed:@"iconfont-sousuo"]];
    cycleScrollView.pageControlAliment = SDCycleScrollViewPageContolAlimentRight;
    cycleScrollView.titlesGroup = titles;
    cycleScrollView.currentPageDotColor = [UIColor greenColor];

    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        cycleScrollView.imageURLStringsGroup = imagesURLStrings;
        
    });

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{


    return  5;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    customCell2 *cell = (customCell2 *)[tableView dequeueReusableCellWithIdentifier:@"cell"];
//    cell.backgroundColor= [UIColor greenColor];

        
//        containerView.frame = cell.frame;
//        containerView.frame = CGRectMake(0, 0, 414, 350);
    
    
    return  cell;

}




#pragma -mark init
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.tabBarItem.title = @"Happyi";
        self.tabBarItem.image = [[UIImage imageNamed:@"iconfont-shouye"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        self.tabBarItem.selectedImage = [[UIImage imageNamed:@"iconfont-shouyeh"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    }
    
    return self;
}


#pragma -mark buttonClick

- (void)buttomClick:(UIButton *)sender{




}




@end
