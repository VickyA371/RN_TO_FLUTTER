package com.rnloginsdkexample
import com.facebook.react.ReactPackage
import com.facebook.react.bridge.NativeModule
import com.facebook.react.bridge.ReactApplicationContext


class MyPackage: ReactPackage {
  override fun createNativeModules(p0: ReactApplicationContext): MutableList<NativeModule> {
    // Add your native modules to the list here. For example:
    // modules.add(new MyNativeModule(reactContext));
    return ArrayList()
  }

  override fun createViewManagers(
    reactContext: ReactApplicationContext
  ) = listOf(MyViewManager(reactContext))
}
