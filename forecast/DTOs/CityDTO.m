//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import "CityDTO.h"


@implementation CityDTO {

}

- (instancetype)initWithCityId:(NSString *)cityId cityName:(NSString *)cityName {
    self = [super init];
    if (self) {
        self.cityId = cityId;
        self.cityName = cityName;
    }

    return self;
}

+ (instancetype)dtoWithCityId:(NSString *)cityId cityName:(NSString *)cityName {
    return [[self alloc] initWithCityId:cityId cityName:cityName];
}


@end