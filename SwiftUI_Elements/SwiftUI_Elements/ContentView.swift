//
//  ContentView.swift
//  SwiftUI_Elements
//
//  Created by bhavesh on 31/08/21.
//  Copyright © 2021 Bhavesh. All rights reserved.
//

import SwiftUI
import Combine

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

    @ObservedObject var model = BookingStore()

    @State var isChecked: Bool = false
    @State var scale: CGFloat = 1.0

    @State private var counter = 0

    let timer = Timer.publish(every: 1, on: .current, in: .common).autoconnect()

    @State private var flipFlop = false

    @State private var position: CGPoint = .zero

    var list: [String] = [ "Read Swift UI Books",
                           "Read Swift UI Books",
                           "Read Swift UI Books",
                           "Read Swift UI Books",
                           "Read Swift UI Books",
                           "Read Swift UI Books",
                           "Read Swift UI Books",
                           "Read Swift UI Books",
                           "Read Swift UI Books",
                           "Read Swift UI Books",
                           "Read Swift UI Books",
                           "Read Swift UI Books",
                           "Read Swift UI Books",
                           "Read Swift UI Books",
                           "Read Swift UI Books",
                           "Read Swift UI Books",]

    var weatherImageNameList: [String] = [ "sun.min.fill",
                                           "sunrise.fill",
                                           "sunset.fill",
                                           "sun.dust.fill",
                                           "sun.haze.fill",
                                           "wind",
                                           ]

    @State private var dashPhaseValue: CGFloat = 0

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
        //        TabView {
        //            Text("Home Screen")
        //                .tabItem({
        //                    Image(systemName: "house.fill")
        //                    Text("Home")
        //                })
        //                .tag(0)
        //
        //            Text("Edit Screen")
        //                .tabItem ({
        //                    Image(systemName: "pencil.circle.fill")
        //                    Text("Edit")
        //                })
        //                .tag(1)
        //
        //            Text("Notification Screen")
        //                .tabItem ({
        //                    Image(systemName: "bell.fill")
        //                    Text("Notification")
        //                })
        //                .tag(2)
        //
        //            Text("More")
        //                .tabItem ({
        //                    Image(systemName: "ellipsis.circle.fill")
        //                    Text("More")
        //                })
        //                .tag(3)

        //        VStack {
        //            TextField("Your Name", text: $model.bookingName)
        //            Stepper("Seats: \(model.seats)",
        //                    value: $model.seats,
        //                    in: 1...5)
        //        }


//        NavigationView{
//
//            ZStack{
//
//                List {
//                    ForEach(0..<list.count) { index in
//                        TODOView(text: self.list[index])
//                    }
//                }.navigationBarTitle("To-Do List")
//            }
//        }


////        VIBGYOR Text
//        Text("Rainbow")
//            .foregroundColor(Color.white)
//            .padding()
//            .background(Color.red)
//            .cornerRadius(10)
//            .padding()
//            .background(Color.orange)
//            .cornerRadius(10)
//            .padding()
//            .background(Color.yellow)
//            .cornerRadius(10)
//            .padding()
//            .background(Color.green)
//            .cornerRadius(10)
//            .padding()
//            .background(Color.blue)
//            .cornerRadius(10)
//            .padding()
//            .background(Color.purple)
//            .cornerRadius(10)
//            .padding()
//            .background(Color.pink)
//            .cornerRadius(10)



        // Rainbow style Half circle
//        ZStack {
//
//            Circle()
//                .trim(from: 0.5, to: 1)
//                .fill(Color.purple)
//                .scaleEffect(0.8)
//
//            Circle()
//                .trim(from: 0.5, to: 1)
//                .fill(Color.blue)
//                .scaleEffect(0.7)
//
//            Circle()
//                .trim(from: 0.5, to: 1)
//                .fill(Color.green)
//                .scaleEffect(0.6)
//
//            Circle()
//                .trim(from: 0.5, to: 1)
//                .fill(Color.yellow)
//                .scaleEffect(0.5)
//
//            Circle()
//                .trim(from: 0.5, to: 1)
//                .fill(Color.orange)
//                .scaleEffect(0.4)
//
//            Circle()
//                .trim(from: 0.5, to: 1)
//                .fill(Color.red)
//                .scaleEffect(0.3)
//
//            Circle()
//                .trim()
//                .fill(Color.white)
//                .scaleEffect(0.2)
//
//        }

//        Image(systemName: "cloud.sun.bolt.fill")
//            .resizable()
//            .frame(width: 20, height: 20)
//            .padding(5)
//            .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.orange]),
//                                       startPoint: .topLeading,
//                                       endPoint: .bottomTrailing))
//            .foregroundColor(Color.white)
//            .cornerRadius(8)
//            .clipShape(Circle())


//        NavigationView {
//            List {
//                ForEach(0..<weatherImageNameList.count) { index in
//                    HStack {
//                        CustomImage(imageName: self.weatherImageNameList[index])
//                        Text(self.weatherImageNameList[index])
//                    }
//                }
//            }.navigationBarTitle("Weather Image List")
//        }


//        ScrollView(.horizontal, showsIndicators: true) {
//            HStack {
//                ForEach(0..<15){ index in
//                    GeometryReader { g in
//                        Text("This is item: \(index)")
//                            .rotationEffect(.degrees(Double(g.frame(in: .global).minX)))
//                    }
//                }.frame(width: 300, height: 300)
//            }
//        }.background(Color.orange)

//        Text("Timer Ticking \(counter)")
//            .onReceive(timer) { _ in
//                self.counter += 1
//        }

//        ZStack {
//            Circle().fill(Color.green)
//            Circle().fill(Color.yellow)
//                .scaleEffect(0.8)
//            Circle().fill(Color.red)
//                .scaleEffect(0.6)
//            Circle().fill(Color.blue)
//                .scaleEffect(0.4)
//        }
//        .scaleEffect(flipFlop ? 0.2 : 0.8)
//        .opacity(flipFlop ? 0.1 : 1.0)
//        .animation(Animation.spring()
//        .repeatForever(autoreverses: true))
//        .onReceive(timer) { _ in
//            self.flipFlop.toggle()
//        }

//        VStack{
//
//            Path(UIBezierPath(roundedRect: CGRect(origin: .init(x: 100, y: 200),
//                                                  size: CGSize(width: 100, height: 50)),
//                              byRoundingCorners: [.bottomRight, .bottomLeft],
//                              cornerRadii: CGSize(width: 15, height: 15))
//                .cgPath
//            ).fill(Color.red)
//        }

//        Rectangle()
//        .stroke(lineWidth: 5)
//        .padding()

//        Circle()
//        .stroke(style: StrokeStyle(lineWidth: 4,
//                                   lineCap: .round,
//                                   lineJoin: .round,
//                                   dash: [0, 30],
//                                   dashPhase: dashPhaseValue))
//        .padding()
//            .onReceive(timer) { _ in
//                self.dashPhaseValue = self.dashPhaseValue + 100
//        }


//        Text("Bhavesh")
//            .animation(Animation.spring().repeatForever(autoreverses: true))
//            .scaleEffect(flipFlop ? 2.0 : 1.0)
//            .onReceive(timer) { _ in
//                self.flipFlop.toggle()
//        }
//
//        Rectangle()
//        .stroke(Color.red, style: StrokeStyle(
//        lineWidth: 2, lineCap: .butt, lineJoin: .round,
//        dash: [10, 10], dashPhase: flipFlop ? 0 : 40)) .frame(width: 300, height: 300)
//            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: true).speed(4))
//            .onAppear(){self.flipFlop.toggle()}


//        Text("Hello World!!")
//            .onTapGesture {
//                print("Hello World Tapped")
//        }
//
//        Text("Hello World!!!")
//        .gesture(
//            DragGesture(minimumDistance: 1.0)
//                .onEnded({ drag in
//                    print("Text World Dragging")
//                })
//        )

//        ZStack {
//            Circle().foregroundColor(Color.green.opacity(0.1).frame(width: 320, height: 320)
//
//                    Image(systemName: "paperplane").font(.largeTitle).foregroundColor(Color.blue.opacity(0.5))
//                        .offset(x: self.position.x, y: self.position.y)
//                        .animation(Animation.spring())
//                        .gesture(DragGesture()
//                            .onChanged { self.position = $0.location } .onEnded { _ in
//                                if sqrt(self.position.x * self.position.x + self.position.y * self.position.y)
//                                    > 160 {
//                                    self.position = .zero
//                                }
//
//                            }
//            )
//        }

//
//        ZStack {
//            Circle()
//                .foregroundColor(Color.green.opacity(0.1))
//                .frame(width: 320, height: 320)
//
//            Image(systemName: "paperplane")
//                .font(.largeTitle)
//                .foregroundColor(Color.black.opacity(0.5))
//                .offset(x: self.position.x, y: self.position.y)
//                .animation(Animation.spring())
//                .gesture(
//                    DragGesture()
//                        .onChanged({
//                            self.position = $0.location
//                        })
//                        .onEnded({ _ in
//                            if sqrt(self.position.x * self.position.x + self.position.y * self.position.y) > 160 {
//                                self.position = .zero
//                            }
//                        })
//            )
//
//        }
//
//        VStack{
//            Image(systemName: "globe")
//                .font(.largeTitle)
//                .scaleEffect(scale)
//                .foregroundColor(Color.blue.opacity(0.6))
//                .animation(Animation.spring())
//                .gesture(MagnificationGesture(minimumScaleDelta: 0.3)
//                    .onChanged({ value in
//                        self.scale = value
//                    })
//                    .onEnded({ value in
//                        self.scale = 1
//                    })
//            )
//        }.onHover { _ in
//            print("This is hovering")
//        }



        Text("Hello World")
            .onHover(){ _ in
        print("Hovering over the element")

        }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
