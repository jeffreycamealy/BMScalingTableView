//
//  BMScalingTableView.m
//  BMScalingTableView
//
//  Created by Jeffrey Camealy on 12/12/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "BMScalingTableView.h"

@interface BMScalingTableView () {
    NSMutableArray *views;
}
@end


@implementation BMScalingTableView

#pragma mark - Init Method

- (id)init {
    if (self = [super init]) {
        views = [NSMutableArray new];
    }
    return self;
}

- (void)addView:(UIView *)view {
    [views addObject:view];
//    [self addSubview:view];
    [self relayoutConstraints];
//    [self setNeedsUpdateConstraints];
//    [self setNeedsLayout];
    [UIView animateWithDuration:1 animations:^{
        [self layoutIfNeeded];
    }];
}

- (void)relayoutConstraints {
    int i = 0;
    UIView *previousView = nil;
    for (UIView *view in views) {
//        [view removeConstraints:view.constraints];
        [view removeFromSuperview];
        [self addSubview:view];
        
        if (previousView) { // Middle View
            [view makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self.left);
                make.right.equalTo(self.right);
                make.top.equalTo(previousView.bottom);
                make.height.equalTo(previousView.height);
            }];
        } else { // First View
            [view makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self.top);
                make.left.equalTo(self.left);
                make.right.equalTo(self.right);
            }];
        }
        
        // Last View
        if (i == views.count-1) {
            [view makeConstraints:^(MASConstraintMaker *make) {
                make.bottom.equalTo(self.bottom);
            }];
        }
        
        previousView = view;
        i++;
    }
}


//- (void)updateConstraints {
//    [super updateConstraints];
//    
////    for (UIView *view in views) {
////        [view removeConstraints:view.constraints];
////    }
//    
//}

@end
