//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CityDTO : NSObject

@property (nonatomic, copy) NSString *cityId;
@property (nonatomic, copy) NSString *cityName;

- (instancetype)initWithCityId:(NSString *)cityId cityName:(NSString *)cityName;

+ (instancetype)dtoWithCityId:(NSString *)cityId cityName:(NSString *)cityName;


@end