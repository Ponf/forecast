//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <RPSlidingMenu/RPSlidingMenuViewController.h>

@class ForecastModel;

@interface ForecastViewController : RPSlidingMenuViewController

@property (nonatomic, strong) ForecastModel *model;

@end