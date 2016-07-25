//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import "ForecastViewController.h"
#import "ForecastModel.h"
#import "CityForecastCell.h"

@interface ForecastViewController () <ForecastModelDelegate>
@end

NSString * const kForecastCellReuseIdentifier = @"kForecastCellReuseIdentifier";


@implementation ForecastViewController {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.slidingMenuCellReuseIdentifier = kForecastCellReuseIdentifier;
}

- (void)setModel:(ForecastModel *)model {
    _model = model;
    _model.delegate = self;
}

#pragma mark - RPSlidingMenuDataSource

- (NSInteger)numberOfItemsInSlidingMenu {
    return _model.forecasts.count;
}

- (void)customizeCell:(UICollectionViewCell *)slidingMenuCell forRow:(NSInteger)row {
    CityForecastCell *cell = (CityForecastCell *) slidingMenuCell;
    [cell configureWithForecastDTO:_model.forecasts[(NSUInteger) row]];
}

#pragma mark - ForecastModelDelegate

- (void)forecastModelDidUpdateForecast:(ForecastModel *)forecastModel {
    [self.collectionView reloadData];
}


@end