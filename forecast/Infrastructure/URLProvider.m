//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import "URLProvider.h"
#import "CityDTO.h"


@implementation URLProvider {

}

+ (NSString *)baseAPIHost {
    return @"http://api.openweathermap.org";
}

+ (NSString *)apiKey {
    return @"6ee89877a1789477adba71426484f38b";
}

+ (NSURL *)requestUrlForCities:(NSArray<CityDTO *> *)cities {
    __block NSString *resultUrl = [self baseAPIHost];
    resultUrl = [resultUrl stringByAppendingString:@"/data/2.5/group?id="];
    [cities enumerateObjectsUsingBlock:^(CityDTO *city, NSUInteger idx, BOOL *stop) {
        resultUrl = [resultUrl stringByAppendingFormat:@"%@,", city.cityId];
    }];
    resultUrl = [resultUrl stringByAppendingString:@"&units=metric"];
    resultUrl = [resultUrl stringByAppendingFormat:@"&APPID=%@", [self apiKey]];

    return [[NSURL alloc] initWithString:resultUrl];
}



@end