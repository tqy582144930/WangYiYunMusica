//
//  ViewController.m
//  网易云音乐 （发现界面）
//
//  Created by tuqiangyao on 2018/7/25.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//


#import "ViewController.h"
#import "TableViewCell.h"
#define WIDTH [[UIScreen mainScreen] bounds].size.width

#define HEIGHT [[UIScreen mainScreen] bounds].size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.backgroundColor = [UIColor whiteColor];
    
    UIView* titleView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 155)];
    titleView.backgroundColor = [UIColor whiteColor];
    _tableView.tableHeaderView = titleView;


    _sv = [[UIScrollView alloc] init];
    _sv.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 150);
    //是否按照整页来滚动视图
    _sv.pagingEnabled = YES;
    //是否可以开启滚动效果
    _sv.scrollEnabled = YES;
    //设置画布的大小，画布显示在滚动视图内部，一般大于Frame的大小
    _sv.contentSize = CGSizeMake([UIScreen mainScreen].bounds.size.width*8,150);
    //开启横向弹动效果
    _sv.alwaysBounceHorizontal = YES;
    //显示横向滚动条
    _sv.showsHorizontalScrollIndicator = YES;
    //设置背景颜色
    _sv.backgroundColor = [UIColor whiteColor];
    _sv.delegate = self;

    
    //_arr = [NSMutableArray arrayWithObjects:@"1_1.jpg", @"2_2.jpg", @"3_3.jpg", @"4_4.jpg",@"5_5.jpg", @"6_6.jpg", @"7_7.jpg", @"8_b.jpg", nil];
   
    for (int i = 0; i < 8; i++) {
        NSString* strName = [NSString stringWithFormat:@"%d_%d.jpg",i+1, i+1];

        UIImage* image = [UIImage imageNamed:strName];

        UIImageView* iView = [[UIImageView alloc] initWithImage:image];

        iView.frame = CGRectMake([UIScreen mainScreen].bounds.size.width*i, 0, [UIScreen mainScreen].bounds.size.width,150);

        [_sv addSubview:iView];
    }


    [titleView addSubview:_sv];
    
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"pictureCell"];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
}


- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //文字
    NSArray *datl1 = [NSArray arrayWithObjects:@"与你相遇 是我的小幸运",@"拯救坏情绪->为你唱一首明媚的歌",nil];
    NSArray *datl2 = [NSArray arrayWithObjects:@"我对我\n蔡依林",@"脆弱一分钟\n林宥嘉",nil];
    NSArray *datl3 = [NSArray arrayWithObjects:@"狮子座 | 盛夏有你向阳的温柔",@"这些歌名连起来，是我暗恋你多年的秘密",nil];
    NSArray *datl4 = [NSArray arrayWithObjects:@"根据你的口味推荐\n推荐合口味的新歌",@"香蜜沉沉烬如霜\n群星",nil];
    NSArray *datl5 = [NSArray arrayWithObjects:@"何来亏欠，我敢给就敢心碎",@"「纯音」嘘，我的悲伤才刚睡着",nil];
    NSArray *datl6 = [NSArray arrayWithObjects:@"远方\n非非",@"Audio（CLD Remix）\nLSD//Sia//Labrinth",nil];
    
    NSArray* row1 = [NSArray arrayWithObjects:datl1, datl2, nil];
    NSArray* row2 = [NSArray arrayWithObjects:datl3, datl4, nil];
    NSArray* row3 = [NSArray arrayWithObjects:datl5, datl6, nil];
    
    //图片
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

    NSArray *string1 = [NSArray arrayWithObjects:str1, str2, nil];
    NSArray *string2 = [NSArray arrayWithObjects:str3, str4, nil];
    NSArray *string3 = [NSArray arrayWithObjects:str5, str6, nil];
    NSArray *string4 = [NSArray arrayWithObjects:str7, str8, nil];
    NSArray *string5 = [NSArray arrayWithObjects:str9, str10, nil];
    NSArray *string6 = [NSArray arrayWithObjects:str11, str12, nil];
    
    NSArray* row4 = [NSArray arrayWithObjects:string1, string2, nil];
    NSArray* row5 = [NSArray arrayWithObjects:string3, string4, nil];
    NSArray* row6 = [NSArray arrayWithObjects:string5, string6, nil];
    
    
    TableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"pictureCell" forIndexPath:indexPath];
    cell.name1.text = [[row1 objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    cell.name2.text = [[row2 objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    cell.name3.text = [[row3 objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    
    cell.iView1.image = [UIImage imageNamed:[[row4 objectAtIndex:indexPath.section] objectAtIndex:indexPath.row]];
    cell.iView2.image = [UIImage imageNamed:[[row5 objectAtIndex:indexPath.section] objectAtIndex:indexPath.row]];
    cell.iView3.image = [UIImage imageNamed:[[row6 objectAtIndex:indexPath.section] objectAtIndex:indexPath.row]];
    
    
    return cell;

}

- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
}
//获取尾部高度
- (CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 0;
}

-(UIView *) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView1 = [[UIView alloc] init];
    UILabel *label1 = [[UILabel alloc] init];
    label1.frame = CGRectMake(8, 5, 100, 20);
    label1.text = @"推荐歌单 >";
    label1.font = [UIFont systemFontOfSize:20];
    label1.textColor = [UIColor blackColor];
    label1.backgroundColor = [UIColor clearColor];
    [headerView1 addSubview:label1];
    
    UIView *headerView2 = [[UIView alloc] init];
    UILabel *label2 = [[UILabel alloc] init];
    label2.frame = CGRectMake(8, 5, 100, 20);
    label2.text = @"最新音乐 >";
    label2.font = [UIFont systemFontOfSize:20];
    label2.textColor = [UIColor blackColor];
    label2.backgroundColor = [UIColor clearColor];
    [headerView2 addSubview:label2];
                          
    if (section == 0){
        [headerView1 setBackgroundColor:[UIColor whiteColor]];
        return headerView1;
    } else
    return headerView2;
}

- (UIView*) tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200;

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
