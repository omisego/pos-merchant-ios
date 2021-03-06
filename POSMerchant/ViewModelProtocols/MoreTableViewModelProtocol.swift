//
//  MoreTableViewModelProtocol.swift
//  POSMerchant
//
//  Created by Mederic Petit on 4/10/18.
//  Copyright © 2018 Omise Go Pte. Ltd. All rights reserved.
//

import UIKit

protocol MoreTableViewModelProtocol: SelectAccountViewModelDelegate {
    var title: String { get }
    var transactionLabelText: String { get }
    var accountLabelText: String { get }
    var exchangeAccountLabelText: String { get }
    var signOutLabelText: String { get }
    var settingsSectionTitle: String { get }
    var infoSectionTitle: String { get }
    var versionLabelText: String { get }

    var onFailLogout: FailureClosure? { get set }
    var onLoadStateChange: ObjectClosure<Bool>? { get set }
    var shouldShowEnableConfirmationView: EmptyClosure? { get set }
    var onBioStateChange: ObjectClosure<Bool>? { get set }
    var onAccountUpdate: EmptyClosure? { get set }
    var onExchangeAccountUpdate: EmptyClosure? { get set }

    var switchState: Bool { get set }
    var isBiometricAvailable: Bool { get }
    var touchFaceIdLabelText: String { get }
    var accountValueLabelText: String { get }
    var exchangeAccountValueLabelText: String { get }
    var currentVersion: String { get }

    func toggleSwitch(newValue isEnabled: Bool)
    func logout()
    func stopObserving()
}
