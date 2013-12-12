//
//  TestingVC.m
//  BMScalingTableView
//
//  Created by Jeffrey Camealy on 12/12/13.
//  Copyright (c) 2013 bearMountain. All rights reserved.
//

#import "TestingVC.h"
#import "BMScalingTableView.h"

@interface TestingVC () {
    BMScalingTableView *scalingTableView;
}
@end


@implementation TestingVC

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addScalingTableView];
    [self addTestingButtons];
}


#pragma mark - Private API

- (void)addScalingTableView {
    scalingTableView = [BMScalingTableView new];
    [self.view addSubview:scalingTableView];
    scalingTableView.backgroundColor = [UIColor grayColor];
    
    UIEdgeInsets edgeInsets = UIEdgeInsetsMake(20, 20, 20, 20);
    [scalingTableView makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).with.insets(edgeInsets);
    }];
}

- (void)addTestingButtons {
    UIButton *addButton = [UIButton new];
    [self.view addSubview:addButton];
    [addButton setTitle:@"add view" forState:UIControlStateNormal];
    [addButton addTarget:self action:@selector(addButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [addButton makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.left).with.offset(40);
        make.top.equalTo(self.view.top).with.offset(40);
    }];
    
    UIButton *removeButton = [UIButton new];
    [self.view addSubview:removeButton];
    [removeButton setTitle:@"remove view" forState:UIControlStateNormal];
    [removeButton addTarget:self action:@selector(removeButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    [removeButton makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(addButton.right).with.offset(20);
        make.top.equalTo(addButton.top);
    }];
}


#pragma mark - Action Methods

- (void)addButtonPressed {
    UIView *view = [UIView new];
    int r = rand() % 255;
    view.backgroundColor = [UIColor colorWithWhite:(float)r/255 alpha:1];
//    view.backgroundColor = [UIColor blueColor];
    [scalingTableView addView:view];
}

- (void)removeButtonPressed {
    [scalingTableView removeViewAtIndex:1];
}

@end

































