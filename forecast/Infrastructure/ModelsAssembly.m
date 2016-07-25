//
// Created by Филипп Панфилов on 25/07/16.
// Copyright (c) 2016 test. All rights reserved.
//

#import "ModelsAssembly.h"
#import "ForecastModel.h"
#import "ForecastViewController.h"

@implementation ModelsAssembly {

}

#pragma mark - Models
- (ForecastModel *)forecastModel {
    return [TyphoonDefinition withClass:[ForecastModel class] configuration:^(TyphoonDefinition *definition) {
        definition.scope = TyphoonScopeSingleton;
    }];
}

#pragma mark - ViewController
- (ForecastViewController *)forecastViewController {
    return [TyphoonDefinition withClass:[ForecastViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(model) with:[self forecastModel]];
    }];
}

@end