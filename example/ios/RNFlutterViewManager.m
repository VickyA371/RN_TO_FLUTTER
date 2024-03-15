//
//  RNFlutterViewManager.m
//  RnLoginSdkExample
//
//  Created by NTIPL on 13/03/24.
//

#import <Foundation/Foundation.h>
// RNFlutterViewManager.m
#import <React/RCTViewManager.h>

@interface RCT_EXTERN_REMAP_MODULE(RNFlutterViewManager, RNFlutterViewManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(onJsonChange, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onTextChange, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onScreenChange, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onClicksChange, RCTDirectEventBlock)

RCT_EXPORT_VIEW_PROPERTY(text, NSString)
RCT_EXPORT_VIEW_PROPERTY(json, NSString)
RCT_EXPORT_VIEW_PROPERTY(screen, NSString)
RCT_EXPORT_VIEW_PROPERTY(clicks, NSNumber)
RCT_EXPORT_VIEW_PROPERTY(theme, NSString)

@end
