//
//  BooingStore.swift
//  SwiftUI_Elements
//
//  Created by bhavesh on 01/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI
import Combine

class BookingStore: ObservableObject {
    var objectWillChange = PassthroughSubject<Void, Never>()

    var bookingName: String = ""{
        didSet { updateUI() }
    }

    var seats: Int = 1 {
        didSet { updateUI() }
    }

    func updateUI(){
        objectWillChange.send()
    }
}
