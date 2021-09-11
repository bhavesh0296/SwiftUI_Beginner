//
//  TODOView.swift
//  SwiftUI_Elements
//
//  Created by bhavesh on 04/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct TODOView: View {

    @State var isChecked: Bool = false
    let text: String

    var body: some View {
        HStack {
            Image(systemName: self.isChecked ? "checkmark.square" : "square")
            Text(text)
                .strikethrough(isChecked, color: .red)
        }.onTapGesture {
            self.isChecked.toggle()
        }
    }
}

struct TODOView_Previews: PreviewProvider {
    static var previews: some View {
        TODOView(text: "hello")
    }
}
