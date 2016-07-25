//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import <AFNetworking/AFURLSessionManager.h>
#import "NetworkingService.h"
#import "URLProvider.h"
#import "ForecastDTO.h"


@implementation NetworkingService {

}

- (void)updateForecastForCities:(NSArray<CityDTO *> *)cities
                      completed: (void (^)(BOOL, NSArray<ForecastDTO *> *, NSError *))completed {
    void (^safeCompleted)(BOOL, NSArray<ForecastDTO *> *, NSError *) = ^void(BOOL succeed, NSArray<ForecastDTO *> *forecasts, NSError *error) {
        if (completed) {
            completed(succeed, forecasts, error);
        }
    };

    NSURL *requestUrl = [URLProvider requestUrlForCities:cities];
    NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];

    NSURLRequest *request = [NSURLRequest requestWithURL:requestUrl];

    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request
                                                completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
        if (error) {
            safeCompleted(NO, nil, error);
        } else {
            NSArray<ForecastDTO *> *dtos = [self parseResponse:responseObject[@"list"]];
            safeCompleted(YES, dtos, nil);
        }
    }];
    [dataTask resume];
}


- (NSArray<ForecastDTO *> *)parseResponse:(NSArray *)response {
    NSMutableArray<ForecastDTO *> *dtos = @[].mutableCopy;
    [response enumerateObjectsUsingBlock:^(NSDictionary *item, NSUInteger idx, BOOL *stop) {
        ForecastDTO *dto = [ForecastDTO dtoWithCityName:item[@"name"]
                                            temperature:[item[@"main"][@"temp"] stringValue]
                                               iconCode:[item[@"weather"] firstObject][@"icon"]
                                     weatherDescription:[item[@"weather"] firstObject][@"description"]
                                               pressure:[item[@"main"][@"pressure"] stringValue]
                                              windSpeed:[item[@"wind"][@"speed"] stringValue]];
        [dtos addObject:dto];
    }];
    return dtos.copy;
}

@end