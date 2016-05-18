//
//  customCell.m
//  快乐益1
//
//  Created by apple on 16/5/15.
//  Copyright © 2016年 戴维营. All rights reserved.
//

#import "customCell.h"
#import "Masonry.h"

@implementation customCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{

    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        _ttview = [[UIView alloc]init];
        [self addSubview:_ttview];
        [_ttview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.bottom.equalTo(self);
//            make.height.equalTo(@350);
        }];
        
        _imageview = [[UIImageView alloc]init];
        [_ttview addSubview:_imageview];
        [_imageview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(_ttview);
        
        }];
        _imageview.image = [UIImage imageNamed:@"11.jpg"];
        
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
