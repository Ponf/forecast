//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import "ForecastModel.h"
#import "CityDTO.h"
#import "NetworkingService.h"
#import "ForecastDTO.h"


@implementation ForecastModel {
    NSArray<CityDTO *> *_cities;
    NetworkingService *_networkingService;
    NSArray<ForecastDTO *> *_forecasts;
}

- (instancetype)init {
    if (self = [super init]) {
        _cities = @[[CityDTO dtoWithCityId:@"524901" cityName:@"Moscow"],
                [CityDTO dtoWithCityId:@"2643743" cityName:@"London"],
                [CityDTO dtoWithCityId:@"5128638" cityName:@"New York"],
                [CityDTO dtoWithCityId:@"6356055" cityName:@"Barcelona"],
                [CityDTO dtoWithCityId:@"2950159" cityName:@"Berlin"],
                [CityDTO dtoWithCityId:@"6542283" cityName:@"Milan"],
                [CityDTO dtoWithCityId:@"6359304" cityName:@"Madrid"],
                [CityDTO dtoWithCityId:@"5391959" cityName:@"San Francisco"],
                [CityDTO dtoWithCityId:@"5368361" cityName:@"Los Angeles"],
                [CityDTO dtoWithCityId:@"703448" cityName:@"Kiev"]
        ];
        _networkingService = [NetworkingService new];

        __weak typeof(self) wself = self;
        [_networkingService updateForecastForCities:_cities
                                          completed:^(BOOL i, NSArray<ForecastDTO *> *array, NSError *error) {
                                              typeof(self) sself = wself;
                                              sself->_forecasts = array.copy;
                                              [sself->_delegate forecastModelDidUpdateForecast:sself];
                                          }];

    }
    return self;
}

- (NSArray<ForecastDTO *> *)forecasts {
    return _forecasts;
}

@end