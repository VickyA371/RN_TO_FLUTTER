#import "AppDelegate.h"
#import <React/RCTBundleURLProvider.h>

@implementation AppDelegate

@synthesize engines;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.window = [[[UIApplication sharedApplication] windows] firstObject];
  
  // Initialize the Flutter engine and the Flutter view controller
  self.flutterEngine = [[FlutterEngine alloc] initWithName:@"my flutter engine"];
  
//  let engines = FlutterEngineGroup(name: "multiple-flutters", project: nil)
  
  self.engines = [[FlutterEngineGroup alloc] initWithName:@"io.flutter" project:nil];

  
  //  self.flutterViewController = [[FlutterViewController alloc] initWithEngine:self.flutterEngine nibName:nil bundle:nil];
//
//  // Run the Flutter engine and register the plugins
  [self.flutterEngine run];
  [GeneratedPluginRegistrant registerWithRegistry:self.flutterEngine];
  
  
  self.moduleName = @"RnLoginSdkExample";
  // You can add your custom initial props in the dictionary below.
  // They will be passed down to the ViewController used by React Native.
  self.initialProps = @{};
  
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
  return [self getBundleURL];
}

- (NSURL *)getBundleURL
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

- (void) openFlutterApp {  
    dispatch_async(dispatch_get_main_queue(), ^{
      UIViewController *root = RCTPresentedViewController();
      FlutterEngine *flutterEngine = ((AppDelegate *)[UIApplication.sharedApplication delegate]).flutterEngine;
      FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
      UINavigationController *navigation = [[UINavigationController alloc] initWithRootViewController:flutterViewController];
      
      [navigation.navigationBar setHidden:TRUE];
      
      [navigation setModalPresentationStyle:UIModalPresentationOverFullScreen];
      [navigation setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
      
      [self.window.rootViewController presentViewController:navigation animated:true completion:NULL];
//      self.window.rootViewController = navigation;
//      [self.window makeKeyAndVisible];
//      [navigation pushViewController:navigation animated:TRUE];
      
      // without navigation controller
      //  [flutterViewController setModalPresentationStyle:UIModalPresentationOverFullScreen];
      //  [root presentViewController:flutterViewController animated:YES completion:nil];
    });
}

@end
