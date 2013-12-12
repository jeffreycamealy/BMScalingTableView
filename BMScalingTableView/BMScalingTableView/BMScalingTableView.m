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
}


- (void)updateConstraints {
    int i = 0;
//    for (UIView *view in views) {
//        if (i == 0) {
//            view
//        }
//        <#statements#>
//    }
}

@end
