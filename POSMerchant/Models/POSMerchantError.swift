//
//  POSMerchantError.swift
//  POSMerchant
//
//  Created by Mederic Petit on 25/9/18.
//  Copyright © 2018 Omise Go Pte. Ltd. All rights reserved.
//

import OmiseGO

enum POSMerchantError: Error {
    case missingRequiredFields
    case unexpected
    case omiseGO(error: OMGError)
    case other(error: Error)
    case message(message: String)

    var message: String {
        switch self {
        case .missingRequiredFields:
            return "error.missing_required_fields".localized()
        case .unexpected:
            return "error.unexpected".localized()
        case let .omiseGO(error: error):
            return error.description
        case let .other(error: error):
            return error.localizedDescription
        case let .message(message: message):
            return message
        }
    }
}

extension POSMerchantError: CustomStringConvertible, CustomDebugStringConvertible {
    public var description: String { return self.message }
    public var debugDescription: String { return self.message }
}

extension POSMerchantError: LocalizedError {
    public var errorDescription: String? { return self.message }
    public var localizedDescription: String { return self.message }
}
