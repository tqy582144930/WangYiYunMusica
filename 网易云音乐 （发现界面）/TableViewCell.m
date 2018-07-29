//
//  TableViewCell.m
//  网易云音乐 （发现界面）
//
//  Created by tuqiangyao on 2018/7/25.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.name1 = [[UILabel alloc] init];
        _name1.backgroundColor = [UIColor whiteColor];
        _name1.textColor = [UIColor blackColor];
        _name1.numberOfLines = 2;
        _name1.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_name1];
        
        self.name2 = [[UILabel alloc] init];
        _name2.backgroundColor = [UIColor whiteColor];
        _name2.textColor = [UIColor blackColor];
        _name2.numberOfLines = 2;
        _name2.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_name2];
        
        self.name3 = [[UILabel alloc] init];
        _name3.backgroundColor = [UIColor whiteColor];
        _name3.textColor = [UIColor blackColor];
        _name3.numberOfLines = 2;
        _name3.font = [UIFont systemFontOfSize:15];
        [self.contentView addSubview:_name3];
       
        self.iView1 = [[UIImageView alloc] init];
        _iView1.layer.cornerRadius = 5;
        _iView1.layer.masksToBounds = YES;
        [self.contentView addSubview:_iView1];
        
        self.iView2 = [[UIImageView alloc] init];
        _iView2.layer.cornerRadius = 5;
        _iView2.layer.masksToBounds = YES;
        [self.contentView addSubview:_iView2];
        
        self.iView3 = [[UIImageView alloc] init];
        _iView3.layer.cornerRadius = 5;
        _iView3.layer.masksToBounds = YES;
        [self.contentView addSubview:_iView3];
        
    }
    return self;
}

//布局子视图
- (void)layoutSubviews {
    [super layoutSubviews];
    _name1.frame = CGRectMake(8, 135, 127, 50);
    _name2.frame = CGRectMake(143, 135, 127, 50);
    _name3.frame = CGRectMake(278, 135, 127, 50);
    
    _iView1.frame = CGRectMake(8, 5, 127, 127);
    _iView2.frame = CGRectMake(143, 5, 127, 127);
    _iView3.frame = CGRectMake(278, 5, 127, 127);
    
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
