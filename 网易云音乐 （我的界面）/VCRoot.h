//
//  VCRoot.h
//  网易云音乐 （我的界面）
//
//  Created by tuqiangyao on 2018/7/24.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCRoot : UIViewController
<UITabBarDelegate,
UITableViewDataSource>
{
    UITableView *_tableView;
}
@end
