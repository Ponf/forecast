//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ForecastModelDelegate;
@class ForecastDTO;


@interface ForecastModel : NSObject

@property (nonatomic, weak) id<ForecastModelDelegate> delegate;
@property (nonatomic, readonly) NSArray<ForecastDTO *> *forecasts;

@end

@protocol ForecastModelDelegate <NSObject>

- (void)forecastModelDidUpdateForecast:(ForecastModel *)forecastModel;

@end