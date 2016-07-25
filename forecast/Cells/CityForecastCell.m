//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import <AFNetworking/UIKit+AFNetworking.h>
#import "CityForecastCell.h"
#import "ForecastDTO.h"


@implementation CityForecastCell {
    __weak IBOutlet UILabel *_cityNameLabel;
    __weak IBOutlet UILabel *_cityWeatherDescription;
    __weak IBOutlet UIImageView *_weatherStatusImage;

    __weak IBOutlet UILabel *_temperatureLabel;
    __weak IBOutlet UILabel *_windSpeedLabel;
    __weak IBOutlet UILabel *_pressureLabel;
}

- (void)configureWithForecastDTO:(ForecastDTO *)dto {
    _cityNameLabel.text = dto.cityName;
    _cityWeatherDescription.text = dto.weatherDescription;
    NSString *iconUrl = [NSString stringWithFormat:@"http://openweathermap.org/img/w/%@.png", dto.iconCode];
    [_weatherStatusImage setImageWithURL:[[NSURL alloc] initWithString:iconUrl]];

    _temperatureLabel.text = [NSString stringWithFormat:@"Temperature: %@ C", dto.temperature];
    _pressureLabel.text = [NSString stringWithFormat:@"Pressure: %@", dto.pressure];
    _windSpeedLabel.text = [NSString stringWithFormat:@"Wind Speed: %@ km/h", dto.windSpeed];

}

@end