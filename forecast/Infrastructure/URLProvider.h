//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CityDTO;


@interface URLProvider : NSObject

+ (NSURL *)requestUrlForCities:(NSArray<CityDTO *> *)cities;

@end