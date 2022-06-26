//
//  LocationView.swift
//  LocationSwiftUI
//
//  Created by FELIPE AUGUSTO SILVA on 25/06/22.
//

import SwiftUI

struct LocationView: View {
    let viewModel = LocationViewModel()
    @State public private(set) var country: String = ""

    var body: some View {
        Text("Current country, \(self.country)")
            .onAppear {
                if let current = viewModel.getCarrierCountryLocale() {
                    self.country = current
                }
            }
    }
}
