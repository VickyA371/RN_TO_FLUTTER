//
//  ConnectingFile.swift
//  RnLoginSdkExample
//
//  Created by NTIPL on 28/02/24.
//

import Foundation

@objc(Connect)
class Connect: NSObject {
  @objc func goToNative()  {
    print("Goto Native app function called")
    DispatchQueue.main.async {
      if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
        print("Goto Native app function called")
        appDelegate.openFlutterApp()
      }
    }
  }
}
