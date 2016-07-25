//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ForecastDTO : NSObject

@property (nonatomic) NSString *cityName;
@property (nonatomic) NSString *temperature;
@property (nonatomic) NSString *iconCode;
@property (nonatomic) NSString *weatherDescription;
@property (nonatomic) NSString *pressure;
@property (nonatomic) NSString *windSpeed;

- (instancetype)initWithCityName:(NSString *)cityName
                     temperature:(NSString *)temperature
                        iconCode:(NSString *)iconCode
              weatherDescription:(NSString *)weatherDescription
                        pressure:(NSString *)pressure
                       windSpeed:(NSString *)windSpeed;

+ (instancetype)dtoWithCityName:(NSString *)cityName
                    temperature:(NSString *)temperature
                       iconCode:(NSString *)iconCode
             weatherDescription:(NSString *)weatherDescription
                       pressure:(NSString *)pressure
                      windSpeed:(NSString *)windSpeed;


@end