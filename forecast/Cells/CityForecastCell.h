//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ForecastDTO;

@interface CityForecastCell : UICollectionViewCell
- (void)configureWithForecastDTO:(ForecastDTO *)dto;
@end