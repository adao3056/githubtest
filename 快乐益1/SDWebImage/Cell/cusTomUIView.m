//
//  cusTomUIView.m
//  快乐益1
//
//  Created by apple on 16/5/18.
//  Copyright © 2016年 戴维营. All rights reserved.
//

#import "cusTomUIView.h"
#import "Masonry.h"


@interface cusTomUIView ()
{

    NSMutableArray *_buttons;
    UIView *view11;


}
@end

@implementation cusTomUIView

- (instancetype)init{

    if (self = [super init]) {
        
        _buttons = [NSMutableArray array];
        
    }


    return self;
}



- (void)setItems:(NSArray *)items{
    
    _items = items;

    for (NSInteger i = 0; i < _items.count; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];

        [button setTitle:_items[i] forState:UIControlStateNormal];
        button.tag = 1000 + i;
        [self addSubview:button];
        [_buttons addObject:button];
        
        [button addTarget:self action:@selector(ButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    view11 = [UIView new];
    view11.backgroundColor = [UIColor greenColor];
    
    [self addSubview:view11];
    
    [view11 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self);
        make.bottom.equalTo(self);
        
        make.right.equalTo(self.mas_left).offset(self.bounds.size.width/_buttons.count);
        make.height.equalTo(@10);
    }];
    
}



- (void)ButtonClick:(UIButton *)sender{
    
    [_buttons enumerateObjectsUsingBlock:^(UIButton  * obj, NSUInteger idx, BOOL * _Nonnull stop) {
        obj.selected = NO;
    }];
    
    for (NSInteger i = 0; i < _buttons.count; i++) {
        if (sender.tag == (1000 + i)) {
            
            sender.selected = YES;
            [view11 mas_remakeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self.mas_left).offset(self.bounds.size.width * i/_buttons.count);
                
                make.right.equalTo(self.mas_left).offset(self.bounds.size.width * (i+1)/_buttons.count);
                make.height.equalTo(@10);
                make.bottom.equalTo(self);

            }];
            
//            [view11 mas_updateConstraints:^(MASConstraintMaker *make) {
//                make.left.equalTo(self.mas_left).offset(self.bounds.size.width * i/_buttons.count);
//
//                make.right.equalTo(self.mas_left).offset(self.bounds.size.width * (i+1)/_buttons.count);
//            }];

            
        }
    }
//    [UIView animateWithDuration:0.15 animations:^{
//        
//        [self layoutIfNeeded];
//    }];

}


- (void)layoutSubviews{

    [_buttons mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:10 leadSpacing:0 tailSpacing:0];
    [_buttons mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@0);
    }];
    




}
@end
