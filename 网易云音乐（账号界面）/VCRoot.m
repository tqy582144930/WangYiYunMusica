//
//  VCRoot.m
//  网易云音乐（账号界面）
//
//  Created by tuqiangyao on 2018/7/23.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
 
    _tableView.delegate = self;
    _tableView.dataSource = self;

    [self.view addSubview:_tableView];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"账号";
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
    self.navigationItem.rightBarButtonItem = rightBtn;
}

//获取组数
- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 6;
}

//获取每组元素个数
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray* row = [NSArray arrayWithObjects:@1, @1, @3, @8, @2, @1, nil];
    
    return [[row objectAtIndex:section] integerValue];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell* cell = [_tableView dequeueReusableCellWithIdentifier:@"cell"];
    UITableViewCell* cell1 = [_tableView dequeueReusableCellWithIdentifier:@"cell1"];
    UITableViewCell* cell2 = [_tableView dequeueReusableCellWithIdentifier:@"cell2"];
    UITableViewCell* cell3 = [_tableView dequeueReusableCellWithIdentifier:@"cell3"];
    UITableViewCell* cell4 = [_tableView dequeueReusableCellWithIdentifier:@"cell4"];
    
    //设置名称
    NSArray* array1 = [NSArray arrayWithObjects:@"涂强尧", nil];
    NSArray* array2 = [NSArray arrayWithObjects:@"我的消息", nil];
    NSArray* array3 = [NSArray arrayWithObjects:@"会员中心",@"商城", @"在线听歌免费",nil];
    NSArray* array4 = [NSArray arrayWithObjects:@"设置", @"扫一扫", @"个性换肤", @"夜间模式", @"定时关闭", @"音乐闹钟", @"驾驶模式", @"优惠券",nil];
    NSArray* array5 = [NSArray arrayWithObjects:@"分享网易云音乐", @"关于", nil];
    
    NSArray* array = [NSArray arrayWithObjects:array1,array2,array3,array4,array5, nil];
    
    //设置图标
    NSString* str1 = [NSString stringWithFormat:@"1_1.jpg"];
    NSString* str2 = [NSString stringWithFormat:@"2.1"];
    NSString* str3 = [NSString stringWithFormat:@"3.1"];
    NSString* str4 = [NSString stringWithFormat:@"3.2"];
    NSString* str5 = [NSString stringWithFormat:@"3.3"];
    NSString* str6 = [NSString stringWithFormat:@"4.1"];
    NSString* str7 = [NSString stringWithFormat:@"4.2"];
    NSString* str8 = [NSString stringWithFormat:@"4.3"];
    NSString* str9 = [NSString stringWithFormat:@"4.4"];
    NSString* str10 = [NSString stringWithFormat:@"4.5"];
    NSString* str11 = [NSString stringWithFormat:@"4.6"];
    NSString* str12 = [NSString stringWithFormat:@"4.7"];
    NSString* str13 = [NSString stringWithFormat:@"4.8"];
    NSString* str14 = [NSString stringWithFormat:@"4.8"];
    NSString* str15 = [NSString stringWithFormat:@"5.1"];
    NSString* str16 = [NSString stringWithFormat:@"5.2"];
    
    NSArray* sec1 = [NSArray arrayWithObjects:str1, nil];
    NSArray* sec2 = [NSArray arrayWithObjects:str2, nil];
    NSArray* sec3 = [NSArray arrayWithObjects:str3, str4,str5,nil];
    NSArray* sec4 = [NSArray arrayWithObjects:str6, str7,str8,str9,str10,str11,str12,str13,str14, nil];
    NSArray* sec5 = [NSArray arrayWithObjects:str15, str16, nil];
    
    NSArray* sec = [NSArray arrayWithObjects:sec1, sec2, sec3, sec4, sec5, nil];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    
    
    if (indexPath.section == 5) {
        cell.imageView.image = nil;
        cell.textLabel.text = nil;
        if (cell4 == nil) {
            cell4 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell4"];
            UIButton *button1 = [[UIButton alloc] init];
            button1.backgroundColor = [UIColor whiteColor];
            [button1 setTitle:@"退出登录" forState:UIControlStateNormal];
            [button1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
            button1.frame = CGRectMake(165, 15, 75, 30);
            [button1 addTarget:self action:@selector(actionSheet) forControlEvents:UIControlEventTouchUpInside];
            [cell4.contentView addSubview:button1];
        }
        return cell4;
    } else {
        cell.textLabel.text = [[array objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
        cell.imageView.image = [UIImage imageNamed:[[sec objectAtIndex:indexPath.section] objectAtIndex:indexPath.row]];
    }
    
    CGSize itemSize = CGSizeMake(35, 35);
    UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
    CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
    [cell.imageView.image drawInRect:imageRect];
    cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    
    if (indexPath.section == 0) {
        if (cell1 == nil) {
            cell1 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell1"];
            UIButton *button = [[UIButton alloc] init];
            button.backgroundColor = [UIColor whiteColor];
            button.layer.masksToBounds = YES;
            button.layer.borderWidth = 1;
            button.layer.borderColor = [UIColor redColor].CGColor;
            button.frame = CGRectMake(330, 40, 75, 30);
            [button.layer setMasksToBounds:YES];
            [button.layer setCornerRadius:15];
            //按钮点击事件切换
            [button setTitle:@"签到" forState:UIControlStateNormal];
            [button setTitle:@"已签到" forState:UIControlStateSelected];
            [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
           
            [cell1.contentView addSubview:button];
        }
        cell1.textLabel.text = [[array objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
        cell1.imageView.image = [UIImage imageNamed:[[sec objectAtIndex:indexPath.section] objectAtIndex:indexPath.row]];
        cell1.detailTextLabel.text = @"Lv8";
        cell1.detailTextLabel.font = [UIFont systemFontOfSize:15];
        
        CGSize itemSize = CGSizeMake(60, 60);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell1.imageView.image drawInRect:imageRect];
        cell1.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return cell1;
    }

    if (indexPath.section == 1) {
        if (cell2 == nil) {
            cell2 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell2"];
            UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(350, 20, 40, 25)];
            label.backgroundColor = [UIColor redColor];
            label.textColor = [UIColor whiteColor];
            label.text = @" 99+";
            label.layer.cornerRadius =10;
            label.clipsToBounds = YES;
            [cell2.contentView addSubview:label];
        }
        cell2.textLabel.text = [[array objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
        cell2.imageView.image = [UIImage imageNamed:[[sec objectAtIndex:indexPath.section] objectAtIndex:indexPath.row]];
        
        CGSize itemSize = CGSizeMake(35, 35);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell2.imageView.image drawInRect:imageRect];
        cell2.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return cell2;
    }
    
    if (indexPath.section == 3 && indexPath.row == 3) {
        if (cell3 == nil) {
            cell3 = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell3"];
            UISwitch *sw = [[UISwitch alloc] initWithFrame:CGRectMake(360, 10, 100, 50)];
            [cell3.contentView addSubview:sw];
        }
        cell3.textLabel.text = [[array objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
        cell3.imageView.image = [UIImage imageNamed:[[sec objectAtIndex:indexPath.section] objectAtIndex:indexPath.row]];
        
        CGSize itemSize = CGSizeMake(35, 35);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell3.imageView.image drawInRect:imageRect];
        cell3.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return cell3;
    }
    

    return cell;
   
}
    
- (void)buttonClick:(UIButton *)button {
    button.selected = !button.selected;
}

-(void)actionSheet{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"是否退出此账号" message:@"退出登录数据清零" preferredStyle: UIAlertControllerStyleActionSheet];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    
    UIAlertAction *deleteAction = [UIAlertAction actionWithTitle:@"退出" style:UIAlertActionStyleDestructive handler:nil];
    
    [alertController addAction:cancelAction];
    
    [alertController addAction:deleteAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

//获取组的头部高度
- (CGFloat) tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 0;
}
//获取尾部高度
- (CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 5;
}

- (UIView*) tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 120;
    } else {
        return 60;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
