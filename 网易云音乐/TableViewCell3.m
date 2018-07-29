//
//  TableViewCell3.m
//  网易云音乐
//
//  Created by tuqiangyao on 2018/7/25.
//  Copyright © 2018年 tuqiangyao. All rights reserved.
//

#import "TableViewCell3.h"

@implementation TableViewCell3
-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.name = [[UILabel alloc] init];
        _name.backgroundColor = [UIColor whiteColor];
        _name.textColor = [UIColor blackColor];
        [self.contentView addSubview:_name];
        
        self.daltName = [[UILabel alloc] init];
        _daltName.backgroundColor = [UIColor whiteColor];
        _daltName.textColor = [UIColor blackColor];
        _daltName.font = [UIFont systemFontOfSize:15];
        _daltName.textColor = [UIColor grayColor];
        [self.contentView addSubview:_daltName];
        
        self.iView = [[UIImageView alloc] init];
        _iView.layer.cornerRadius = 5;
        _iView.layer.masksToBounds = YES;
        [self.contentView addSubview:_iView];
        
    }
    return self;
}
//布局子视图
- (void)layoutSubviews {
    [super layoutSubviews];
    _name.frame = CGRectMake(66, 0, 300, 45);
    
    _daltName.frame = CGRectMake(66, 45, 300, 10);
    
    _iView.frame = CGRectMake(1, 5, 60, 60);
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
