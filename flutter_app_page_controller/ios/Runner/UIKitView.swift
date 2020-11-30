//
//  UIKitView.swift
//  Runner
//
//  Created by honjo on 2020/12/01.
//

import Foundation

class UIKitViewFactory: NSObject, FlutterPlatformViewFactory {
  func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
    return UIKitView(frame: frame)
  }
}

class UIKitView: NSObject, FlutterPlatformView {
  let _view = UIView()

  init(frame: CGRect) {
    super.init()
    _view.frame = frame
    _view.backgroundColor = .green
  }

  func view() -> UIView {
    return _view
  }
}
