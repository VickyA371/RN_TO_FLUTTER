//
//  RNTMapManager.m
//  RnLoginSdkExample
//
//  Created by NTIPL on 13/03/24.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

#import <React/RCTViewManager.h>

@interface RNTMapManager : RCTViewManager
@end

@implementation RNTMapManager

RCT_EXPORT_MODULE(RNTMap)

RCT_EXPORT_VIEW_PROPERTY(zoomEnabled, BOOL)

- (UIView *)view
{
  MKMapView *mkMapView = [[MKMapView alloc] init];
  
  return mkMapView;
}

@end
