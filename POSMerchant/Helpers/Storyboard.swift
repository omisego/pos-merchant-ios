//
//  Storyboard.swift
//  POSMerchant
//
//  Created by Mederic Petit on 25/9/18.
//  Copyright © 2018 Omise Go Pte. Ltd. All rights reserved.
//

import UIKit

enum Storyboard {
    case loading
    case welcome
    case signin
    case selectAccount
    case tabBar
    case receive
    case topup
    case more
    case keyboard
    case selectToken
    case qrReader

    var name: String {
        switch self {
        case .loading: return "Loading"
        case .welcome: return "Welcome"
        case .signin: return "Signin"
        case .selectAccount: return "SelectAccount"
        case .tabBar: return "TabBar"
        case .receive: return "Receive"
        case .topup: return "Topup"
        case .more: return "More"
        case .keyboard: return "Keyboard"
        case .selectToken: return "SelectToken"
        case .qrReader: return "QRReader"
        }
    }

    var storyboard: UIStoryboard {
        return UIStoryboard(name: self.name, bundle: nil)
    }

    func viewControllerFromId<T: UIViewController>() -> T? {
        return self.storyboard.instantiateViewController(withIdentifier: String(describing: T.self)) as? T
    }
}
