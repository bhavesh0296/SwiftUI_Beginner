//
//  CustomImage.swift
//  SwiftUI_Elements
//
//  Created by bhavesh on 04/09/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct CustomImage: View {
    
    var imageName: String

    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .frame(width: 40, height: 40)
            .padding(5)
            .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing))
            .foregroundColor(Color.white)
            .cornerRadius(8)
            .clipShape(Circle())
    }
}

struct CustomImage_Previews: PreviewProvider {
    static var previews: some View {
        CustomImage(imageName: "cloud.sun.bolt.fill")
    }
}
