//
//  ReceiveViewModel.swift
//  POSMerchant
//
//  Created by Mederic Petit on 4/10/18.
//  Copyright © 2018 Omise Go Pte. Ltd. All rights reserved.
//

import UIKit

class ReceiveViewModel: KeypadInputViewModel {
    override var title: String {
        return "receive.label.title".localized()
    }

    override var buttonTitle: String {
        return "receive.button.action".localized()
    }

    override func didDecode(_ string: String) {
        let transactionBuilder = TransactionBuilder(type: .receive,
                                                    amount: self.displayAmount,
                                                    token: self.selectedToken!,
                                                    address: string)
        self.shouldProcessTransaction?(transactionBuilder)
    }

    override func qrReaderStrings() -> (String, String) {
        let title = "\("qr_reader.label.scan_to".localized()) \("receive.label.title".localized().lowercased())"
        let tokenString = "\(self.displayAmount) \(self.selectedToken!.symbol)"
        return (title, tokenString)
    }
}
