#import "RnLoginSdk.h"
#import <React/RCTRootView.h>
#import "React/RCTViewManager.h"

@implementation RnLoginSdk
RCT_EXPORT_MODULE()

// Example method
// See // https://reactnative.dev/docs/native-modules-ios
RCT_EXPORT_METHOD(multiply:(double)a
                  b:(double)b
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject)
{
    NSNumber *result = @(a * b);

    resolve(result);
}

// This macro exports the method name and arguments to JavaScript
RCT_EXPORT_METHOD(openLoginSdk)
{
//    dispatch_async(dispatch_get_main_queue(), ^{
//        UIViewController *root = RCTPresentedViewController();
//        
//        
//        FlutterEngine *flutterEngine = ((AppDelegate *)[UIApplication.sharedApplication delegate]).flutterEngine;
//        FlutterViewController *flutterViewController = [[FlutterViewController alloc] initWithEngine:flutterEngine nibName:nil bundle:nil];
//        [root presentViewController:flutterViewController animated:YES completion:nil];
//        
////        [root presentViewController:picker animated:YES completion:nil];
//    });
}


// Don't compile this code when we build for the old architecture.
#ifdef RCT_NEW_ARCH_ENABLED
- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::NativeRnLoginSdkSpecJSI>(params);
}
#endif

@end
