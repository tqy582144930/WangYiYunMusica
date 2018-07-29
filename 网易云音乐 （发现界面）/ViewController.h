//
//  ViewController.h
//  网易云音乐 （发现界面）
//
//  Created by tuqiangyao on 2018/7/25.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITabBarDelegate,
UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIScrollView *sv;

@end

