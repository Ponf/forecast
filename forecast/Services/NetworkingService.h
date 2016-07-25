//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CityDTO;
@class ForecastDTO;


@interface NetworkingService : NSObject


- (void)updateForecastForCities:(NSArray<CityDTO *> *)cities
                      completed:(void (^)(BOOL, NSArray<ForecastDTO *> *, NSError *))completed;
@end