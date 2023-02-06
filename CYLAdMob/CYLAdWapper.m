//
//  MetaWapper.m
//  MetaSampleOC
//
//  Created by Slim on 2023/2/3.
//

#import "CYLAdWapper.h"
#import <FBAudienceNetwork/FBAudienceNetworkAds.h>
#import <GoogleMobileAds/GoogleMobileAds.h>

#import <AppTrackingTransparency/AppTrackingTransparency.h>
#import <AdSupport/AdSupport.h>

@implementation CYLAdWapper

+ (void)prepare {
    [FBAudienceNetworkAds initializeWithSettings:nil completionHandler:nil];
    
    [[GADMobileAds sharedInstance] startWithCompletionHandler:^(GADInitializationStatus * _Nonnull status) {
        NSLog(@"%@",status);

        [ATTrackingManager requestTrackingAuthorizationWithCompletionHandler:^(ATTrackingManagerAuthorizationStatus status) {
            // Tracking authorization completed. Start loading ads here.
            // [self loadAd];
          }];
        
    }];
}

@end
