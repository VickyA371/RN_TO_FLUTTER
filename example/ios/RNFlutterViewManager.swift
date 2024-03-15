//
//  RNFlutterViewManager.swift
//  RnLoginSdkExample
//
//  Created by NTIPL on 13/03/24.
//

import Foundation
// RNFlutterViewManager.swift
import React

@objc(RNFlutterViewManager)
class RNFlutterViewManager: RCTViewManager {

  override func view() -> (RNFlutterView) {
    return RNFlutterView()
  }

  @objc override static func requiresMainQueueSetup() -> Bool {
    return false
  }
}
