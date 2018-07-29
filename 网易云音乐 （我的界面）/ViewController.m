//
//  ViewController.m
//  网易云音乐 （我的界面）
//
//  Created by tuqiangyao on 2018/7/24.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    //修改按钮颜色
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    //修改字体颜色
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    self.navigationController.navigationBar.translucent = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"我的音乐";
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.backgroundColor = [UIColor whiteColor];
    
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"pictureCell"];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *sec = [NSArray arrayWithObjects:@4, @2, @13, nil];
    return [[sec objectAtIndex:section] integerValue];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell1 = [_tableView dequeueReusableCellWithIdentifier:@"cell1"];
    //主标题
    NSArray *sec1 = [NSArray arrayWithObjects:@"本地音乐", @"最近播放", @"我的电台", @"我的收藏",nil];
    NSArray *sec2 = [NSArray arrayWithObjects:@"我喜欢的音乐", @"纯音乐",nil];
    NSArray *sec3 = [NSArray arrayWithObjects:@"学习用【安静的纯音乐】<合订版>",@"QQ飞车音乐合集",@"QQ飞车手游背景音乐",@"DNF60版",@"顶级街头健身音乐，释放你的激情",@"【华语励志篇】你就是主角 谁都无可替代", @"【BGM】纯音乐 节奏 励志 激情", @"学习&作业 | 适合学习和看书的轻音乐", @"安静看书纯音乐", @"设计师工作背景音乐", @"【冥想静读】精神的伊甸园", @"神奇的a波音乐",@"纯音、世界名钢琴曲", nil];
    
    
    NSArray* sec = [NSArray arrayWithObjects:sec1, sec2, sec3, nil];
    //副标题
    NSArray *datl1 = [NSArray arrayWithObjects:@"101首，已下载21首", @"8首", nil];
    NSArray *datl2 = [NSArray arrayWithObjects:@"180首，by榕楠雅记，已下载10首",@"136首，by喵了个哼哼哈嘿",@"182首，by EDM_CARL",@"82首，by铀帅气",@"103首，by唯我疯狂c",@"73首，by钟泽希",@"204首，by AAAKALA",@"50首，by羊驼idol，已下载3首",@"42首，by阿臻|，已下载5首",@"520首，by爱学习爱设计，已下载17首",@"306首，by账号已被注销，已下载251首",@"176首，by云轻掠过，已下载9首",@"21首，by七里香，已下载6首", nil];
    
    NSArray* datl = [NSArray arrayWithObjects:datl1, datl2, nil];
    
    ///图片
    NSString* str1 = [NSString stringWithFormat:@"1.jpg"];
    NSString* str2 = [NSString stringWithFormat:@"2.jpg"];
    NSString* str3 = [NSString stringWithFormat:@"3.jpg"];
    NSString* str4 = [NSString stringWithFormat:@"4.jpg"];
    NSString* str5 = [NSString stringWithFormat:@"5.jpg"];
    NSString* str6 = [NSString stringWithFormat:@"6.jpg"];
    NSString* str7 = [NSString stringWithFormat:@"7.jpg"];
    NSString* str8 = [NSString stringWithFormat:@"8.jpg"];
    NSString* str9 = [NSString stringWithFormat:@"9.jpg"];
    NSString* str10 = [NSString stringWithFormat:@"10.jpg"];
    NSString* str11 = [NSString stringWithFormat:@"11.jpg"];
    NSString* str12 = [NSString stringWithFormat:@"12.jpg"];
    NSString* str13 = [NSString stringWithFormat:@"13.jpg"];
    NSString* str14 = [NSString stringWithFormat:@"14.jpg"];
    NSString* str15 = [NSString stringWithFormat:@"15.jpg"];
    
    NSArray* pic1 = [NSArray arrayWithObjects:str1, str2,nil];
    NSArray* pic2 = [NSArray arrayWithObjects:str3,str4,str5,str6,str7,str8,str9,str10,str11,str12,str13,str14,str15, nil];

    NSArray* pic = [NSArray arrayWithObjects:pic1, pic2,nil];

    //标准cell图标
    NSString* string1 = [NSString stringWithFormat:@"音乐"];
    NSString* string2 = [NSString stringWithFormat:@"最近播放"];
    NSString* string3 = [NSString stringWithFormat:@"电台"];
    NSString* string4 = [NSString stringWithFormat:@"我的收藏"];
    
    NSArray *row = [NSArray arrayWithObjects:string1, string2, string3, string4,nil];
    
    if (indexPath.section == 0) {
        if (cell1 == nil) {
            cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
        }
        cell1.textLabel.text = [[sec objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
        cell1.imageView.image = [UIImage imageNamed:[row objectAtIndex:indexPath.row] ];
        
        CGSize itemSize = CGSizeMake(35, 35);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell1.imageView.image drawInRect:imageRect];
        cell1.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return cell1;
    }
    
    
    if (indexPath.section == 1) {
        TableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"pictureCell" forIndexPath:indexPath];
        cell2.name.text = [[sec objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
        cell2.daltName.text = [[datl objectAtIndex:indexPath.section - 1] objectAtIndex:indexPath.row];
        cell2.iView.image = [UIImage imageNamed:[[pic objectAtIndex:indexPath.section - 1] objectAtIndex:indexPath.row]];
        
        return cell2;
    } else if (indexPath.section == 2) {
        TableViewCell *cell3 = [tableView dequeueReusableCellWithIdentifier:@"pictureCell" forIndexPath:indexPath];
        cell3.name.text = [[sec objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
        cell3.daltName.text = [[datl objectAtIndex:indexPath.section - 1] objectAtIndex:indexPath.row];
        cell3.iView.image = [UIImage imageNamed:[[pic objectAtIndex:indexPath.section - 1] objectAtIndex:indexPath.row]];
        
        return cell3;
    }
   
    
    
    return cell1;
}

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0;
}
//获取尾部高度
- (CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 30;
}

- (UIView*) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
        return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 50;
    } else {
        return 70;
    }
}
    //获取每组头部标题
- (NSString*) tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if (section == 0) {
        return @"我创建的歌单（2）";
    } else {
        return @"我收藏的歌单（15）";
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
