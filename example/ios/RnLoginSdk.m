//
//  RnLoginSdk.m
//  RnLoginSdkExample
//
//  Created by NTIPL on 27/02/24.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"

@implementation RnLoginSdk 

// reference "ChangeViewBridge" module in index.ios.js
RCT_EXPORT_MODULE(RnLoginSdk);

RCT_EXPORT_METHOD(changeToNativeView) {
  NSLog(@"RN binding - Native View - Loading MyViewController.swift");
  AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
  [appDelegate goToNativeView];
}

@end
