//
//  modalController.m
//  HQLTransitionAnimation
//
//  Created by weplus on 2017/2/16.
//  Copyright © 2017年 weplus. All rights reserved.
//

#import "modalController.h"

@interface modalController ()

@property (strong, nonatomic) UIButton *dismissButton;

@end

@implementation modalController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [self randomColor];
    [self dismissButton];
}

- (UIColor *)randomColor {
    return [UIColor colorWithRed:(arc4random_uniform(255) / 255.0) green:(arc4random_uniform(255) / 255.0) blue:(arc4random_uniform(255) / 255.0) alpha:1];
}

- (void)dismissButtonDidClick:(UIButton *)button {
    if ([self.delegate respondsToSelector:@selector(modalControllerDidClickDismissButton:)]) {
        [self.delegate modalControllerDidClickDismissButton:button];
    }
}

- (UIButton *)dismissButton {
    if (!_dismissButton) {
        _dismissButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_dismissButton setTitle:@"dismiss" forState:UIControlStateNormal];
        [_dismissButton sizeToFit];
        [_dismissButton setFrame:CGRectMake(0, 0, 100, 100)];
        [_dismissButton addTarget:self action:@selector(dismissButtonDidClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:_dismissButton];
    }
    return _dismissButton;
}

@end
