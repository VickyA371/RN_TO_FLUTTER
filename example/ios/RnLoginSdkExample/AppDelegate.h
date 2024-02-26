#import <RCTAppDelegate.h>
#import <UIKit/UIKit.h>
#import <Flutter/Flutter.h>
#import "FlutterPluginRegistrant/FlutterPluginRegistrant-umbrella.h"
#import <React/RCTBridge.h>
#import <React/RCTViewManager.h>

#import <UIKit/UIKit.h>

@interface AppDelegate : RCTAppDelegate

@property (nonatomic,strong) FlutterEngine *flutterEngine;
@property (nonatomic,strong) FlutterViewController *flutterViewController;

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) RCTBridge *bridge;

@property (strong, nonatomic) UINavigationController *navController;


- (void) openFlutterApp;

@end
