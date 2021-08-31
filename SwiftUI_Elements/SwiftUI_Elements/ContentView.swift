//
//  ContentView.swift
//  SwiftUI_Elements
//
//  Created by bhavesh on 31/08/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var isToggle: Bool = false
    @State var name = ""
    @State var slider: Float = 5.0
    @State var stepperValue = 5
    @State var weekDayIndex = 0
    var weekDays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    var genresMusic = ["Romantic", "Rock", "Electro", "Rap"]
    @State var genreMusicIndex = 0
    @State var dateOfBirth = Date()

    var body: some View {
        //        Text("Hello, Swift UI")

        //        Image(systemName:"clock")
        //            .resizable()
        //            .frame(width: 80, height: 80, alignment: .center)

        //        Button("Click Me") {
        //            //handle the tap
        //        }

        //        Toggle(isOn: $isToggle) {
        //            Text("Toogle")
        //        }


        //        TextField("Please Enter Name", text: $name).textFieldStyle(RoundedBorderTextFieldStyle())
        //        .frame(width: 280, height: 40, alignment: .center)

        //        Slider(value: $slider, in: 0...10)
        //            .padding(.horizontal, 40)

        //        Stepper("Steps \(stepperValue)", value: $stepperValue, in: 0...10)
        //            .padding(.horizontal, 80)


        /// Segment Control
        //        Picker("Week Day", selection: $genreMusicIndex) {
        //            ForEach(0..<genresMusic.count) { index in
        //                Text(self.genresMusic[index])
        //                    .tag(index)
        //            }
        //        }
        //        .pickerStyle(SegmentedPickerStyle())
        //        .padding(.horizontal, 40)

        /// Date Picker

        //        DatePicker("Select Date of Birth", selection: $dateOfBirth, in: ...Date(), displayedComponents: [.date])
        //        .labelsHidden()
        //            .padding(.horizontal, 30)

        /// Navigation View and NavigationLink


        //        NavigationView {

        //        NavigationView {
        //            NavigationLink("Navigation Link", destination: Text("Navigation Link Clicked"))
        //            .navigationBarTitle("Navigation Demo")
        //        }

        /// NavigationBarItems

        //        NavigationView {
        //            NavigationLink("Navigation Link", destination: Text("Navigation Link Clicked"))
        //                .navigationBarItems(trailing: Button("Bar Item"){
        //                    // code for navigation bar item clicked
        //                })
        //            .navigationBarTitle("Navigation Demo")
        //        }

        // Tab View
        TabView {
            Text("Home Screen")
                .tabItem({
                    Image(systemName: "house.fill")
                    Text("Home")
                })
                .tag(0)

            Text("Edit Screen")
                .tabItem ({
                    Image(systemName: "pencil.circle.fill")
                    Text("Edit")
                })
                .tag(1)

            Text("Notification Screen")
                .tabItem ({
                    Image(systemName: "bell.fill")
                    Text("Notification")
                })
                .tag(2)

            Text("More")
                .tabItem ({
                    Image(systemName: "ellipsis.circle.fill")
                    Text("More")
                })
                .tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
