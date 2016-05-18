//
//  customCell2.m
//  快乐益1
//
//  Created by apple on 16/5/16.
//  Copyright © 2016年 戴维营. All rights reserved.
//

#import "customCell2.h"
#import "Masonry.h"

@implementation customCell2


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _ttview = [[UIView alloc]init];
        [self.contentView addSubview:_ttview];
        [_ttview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.bottom.equalTo(self.contentView);
                    make.height.equalTo(@200);
        }];
        _ttview.backgroundColor = [UIColor greenColor];
        
        _titlelabel1 = [UILabel new];
        [_ttview addSubview:_titlelabel1];
                        [_titlelabel1 mas_makeConstraints:^(MASConstraintMaker *make) {
        
                            make.left.top.right.equalTo(_ttview);
                        }];
                _titlelabel1.backgroundColor = [UIColor redColor];
        
        
//        _imageview1 = [[UIImageView alloc]init];
//        _moneyimageview1 = [[UIImageView alloc]init];
//        _titlelabel1 = [UILabel new];
//        [self.contentView addSubview:_titlelabel1];
//
//        [self.contentView addSubview:_moneyimageview1];
//        [self.contentView addSubview:_imageview1];
//        [_imageview1 mas_makeConstraints:^(MASConstraintMaker *make) {
//            
//            make.left.and.top.and.equalTo(self.contentView);
//            make.bottom.equalTo(_titlelabel1.mas_top);
//
//            make.right.equalTo(_moneyimageview1.mas_left).with.offset(-10);
////            make.width.equalTo(_moneyimageview1);
//        }];
//                _imageview1.image = [UIImage imageNamed:@"moneyNoBg"];


//        [_moneyimageview1 mas_makeConstraints:^(MASConstraintMaker *make) {
//           
//            make.top.and.bottom.and.right.equalTo(self.contentView);
//            make.width.equalTo(_imageview1);
//        }];
//        _moneyimageview1.image = [UIImage imageNamed:@"moneyNoBg"];

        
//                [_titlelabel1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        
//                    make.bottom.equalTo(_ttview.mas_bottom).offset(40);
//                    make.left.equalTo(_ttview.mas_left).offset(15);
//                    make.right.equalTo(_ttview.)
//                    make.width.equalTo(@180);
//                }];
//        _titlelabel1.backgroundColor = [UIColor redColor];
//                
        
//        _xinimageview1 = [[UIImageView alloc]init];
//        [_ttview addSubview:_xinimageview1];
//        [_imageview1 mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.equalTo(_ttview.mas_left).offset(155);
//            make.bottom.equalTo(_ttview.mas_bottom).offset(-10);
//            make.height.equalTo(@32);
//            make.width.equalTo(@32);
//            
//        }];
//        _xinimageview1.image = [UIImage imageNamed:@"66"];
//        
//        
//        _titlelabel1 = [UILabel new];
//        [_ttview addSubview:_titlelabel1];
//        [_imageview1 mas_makeConstraints:^(MASConstraintMaker *make) {
//            
//            make.top.equalTo(_ttview.mas_top).offset(140);
//            make.left.equalTo(_ttview.mas_left).offset(15);
//
//            make.height.equalTo(@40);
//            make.width.equalTo(@180);
//        }];
//        
//        _moneylabel1 = [UILabel new];
//        [_ttview addSubview:_moneylabel1];
//        [_moneylabel1 mas_makeConstraints:^(MASConstraintMaker *make) {
//            
//            make.left.equalTo(_ttview).offset(50);
//            make.bottom.equalTo(@-10);
//            make.height.equalTo(@32);
//            make.width.equalTo(@80);
//        }];
//        
//        _xinlabel1 = [UILabel new];
//        _xinlabel1.backgroundColor  = [UIColor redColor];
//        [_ttview addSubview:_xinlabel1];
//        [_xinlabel1 mas_makeConstraints:^(MASConstraintMaker *make) {
//            
//            make.left.equalTo(_ttview).offset(-180);
//            make.bottom.equalTo(@-10);
//            make.height.equalTo(@32);
//            make.width.equalTo(@32);
//
//        }];
        
//
//        _imageview2 = [[UIImageView alloc]init];
//        [_ttview addSubview:_imageview2];
//        [_imageview2 mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.top.equalTo(_ttview).offset(204);
//            make.height.equalTo(@120);
//            make.width.equalTo(@200);
//            
//        }];
//        _moneyimageview2 = [[UIImageView alloc]init];
//        [_ttview addSubview:_moneyimageview2];
//        [_moneyimageview2 mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.equalTo(_ttview).offset(205);
//            make.bottom.equalTo(@-10);
//            make.height.equalTo(@32);
//            make.width.equalTo(@32);
//        }];
//        _xinimageview2.image = [UIImage imageNamed:@"moneyNoBg"];
//        
//        _xinimageview2 = [[UIImageView alloc]init];
//        [_ttview addSubview:_xinimageview2];
//        [_imageview1 mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.equalTo(_ttview).offset(355);
//            make.bottom.equalTo(@-10);
//            make.height.equalTo(@32);
//            make.width.equalTo(@32);
//            
//        }];
//        _xinimageview2.image = [UIImage imageNamed:@"66"];
//        
//        
//        _imageview2 = [UIImageView new];
//        [_ttview addSubview:_imageview2];
//        [_imageview2 mas_makeConstraints:^(MASConstraintMaker *make) {
//            
//            make.top.equalTo(@140);
//            make.left.equalTo(_ttview).offset(215);
//            
//            make.height.equalTo(@40);
//            make.width.equalTo(@180);
//        }];
//        
//        _moneylabel2 = [UILabel new];
//        [_ttview addSubview:_moneylabel2];
//        [_moneylabel2 mas_makeConstraints:^(MASConstraintMaker *make) {
//            
//            make.left.equalTo(_ttview).offset(250);
//            make.bottom.equalTo(@-10);
//            make.height.equalTo(@32);
//            make.width.equalTo(@80);
//        }];
//        
//        _xinlabel2 = [UILabel new];
//        [_ttview addSubview:_xinlabel2];
//        [_xinlabel2 mas_makeConstraints:^(MASConstraintMaker *make) {
//            
//            make.left.equalTo(_ttview).offset(380);
//            make.bottom.equalTo(@-10);
//            make.height.equalTo(@32);
//            make.width.equalTo(@32);
//            
//        }];

        
    }
    
    return self;
    
    
}


- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}




@end
