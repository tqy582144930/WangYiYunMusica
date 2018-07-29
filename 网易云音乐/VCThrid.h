//
//  VCThrid.h
//  网易云音乐
//
//  Created by tuqiangyao on 2018/7/24.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCThrid : UIViewController
<UITabBarDelegate,
UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@end
