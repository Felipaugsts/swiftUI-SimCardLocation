//
//  LocationViewModel.swift
//  LocationSwiftUI
//
//  Created by FELIPE AUGUSTO SILVA on 25/06/22.
//

import CoreTelephony
import Foundation

public class LocationViewModel {
    public func getCarrierCountryLocale() -> String? {
        let networkInfo = CTTelephonyNetworkInfo()
        let carrier = networkInfo.serviceSubscriberCellularProviders?.filter { $0.value.carrierName != nil }.first?.value
        var cntlyCode = ""
        if let countryCode = carrier?.isoCountryCode?.uppercased() {
            cntlyCode = countryCode
            NSLog("CountryLocationManager \(countryCode)")
        }
        NSLog("returning  \(cntlyCode)")
        return cntlyCode
    }
}
