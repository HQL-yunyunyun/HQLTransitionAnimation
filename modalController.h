//
//  modalController.h
//  HQLTransitionAnimation
//
//  Created by weplus on 2017/2/16.
//  Copyright © 2017年 weplus. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol modalControllerDelegate <NSObject>

- (void)modalControllerDidClickDismissButton:(UIButton*)button;

@end

@interface modalController : UIViewController

@property (assign, nonatomic) id <modalControllerDelegate>delegate;

@end
