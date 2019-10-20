//
//  TabItems.swift
//  Test4
//
//  Created by 山本裕太 on 2019/10/20.
//  Copyright © 2019 山本裕太. All rights reserved.
//

import UIKit
import FontAwesome

/**
 * TabBarの要素用のenum
 * - それぞれテストしたい項目を定義
 */
public enum TabBarItems: CaseIterable {

    case testOne
    case testTwo
    case testThree

    // MARK: - Functions

    /// get each ViewController
    public func getViewController() -> UIViewController? {
        var storyboardName: String
        switch self {
        case .testOne:
            storyboardName = ""
        case .testTwo:
            storyboardName = ""
        case .testThree:
            storyboardName = ""
        }

        return UIStoryboard(name: storyboardName, bundle: nil).instantiateInitialViewController()
    }

    // get tab index
    public func getTabIndex() -> Int {
        switch self {
        case .testOne:
            return 0
        case .testTwo:
            return 1
        case .testThree:
            return 2
        }
    }

    // get MainTabBar title
    public func getTitle() -> String {
        switch self {
        case .testOne:
            return "テスト1"
        case .testTwo:
            return "テスト2"
        case .testThree:
            return "テスト3"
        }
    }

    public func getFontAwesomIcon() -> FontAwesome {
        switch self {
        case .testOne:
            return .hamburger
        case .testTwo:
            return .newspaper
        case .testThree:
            return .images
        }
    }

}