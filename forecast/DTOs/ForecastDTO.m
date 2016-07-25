//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import "ForecastDTO.h"


@implementation ForecastDTO {

}

- (instancetype)initWithCityName:(NSString *)cityName
                     temperature:(NSString *)temperature
                        iconCode:(NSString *)iconCode
              weatherDescription:(NSString *)weatherDescription
                        pressure:(NSString *)pressure
                       windSpeed:(NSString *)windSpeed {
    self = [super init];
    if (self) {
        self.cityName = cityName;
        self.temperature = temperature;
        self.iconCode = iconCode;
        self.weatherDescription = weatherDescription;
        self.pressure = pressure;
        self.windSpeed = windSpeed;
    }

    return self;
}

+ (instancetype)dtoWithCityName:(NSString *)cityName
                    temperature:(NSString *)temperature
                       iconCode:(NSString *)iconCode
             weatherDescription:(NSString *)weatherDescription
                       pressure:(NSString *)pressure
                      windSpeed:(NSString *)windSpeed {
    return [[self alloc] initWithCityName:cityName
                              temperature:temperature
                                 iconCode:iconCode
                       weatherDescription:weatherDescription
                                 pressure:pressure
                                windSpeed:windSpeed];
}

@end