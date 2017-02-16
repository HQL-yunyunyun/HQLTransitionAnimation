//
//  ViewController.m
//  HQLTransitionAnimation
//
//  Created by weplus on 2017/2/16.
//  Copyright © 2017年 weplus. All rights reserved.
//

#import "ViewController.h"
#import "modalController.h"

@interface ViewController () <modalControllerDelegate>

@property (weak, nonatomic) IBOutlet UIButton *modalButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.modalButton.layer.cornerRadius = 5;
    self.modalButton.layer.masksToBounds = YES;
}

- (IBAction)modalController:(id)sender {
    modalController *modalVC = [[modalController alloc] init];
    modalVC.delegate = self;
    [self presentViewController:modalVC animated:YES completion:nil];
}

- (void)modalControllerDidClickDismissButton:(UIButton *)button {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
