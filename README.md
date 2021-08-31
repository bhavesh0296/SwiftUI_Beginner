# SwiftUI Beginner
Code Basics Elements for the Swift UI Beginner

## Text
```swift
Text("Hello SwiftUI")
```

## Image
```swift
Image(systemName:"clock")
```

## Button
```swift
Button("Click Me") { 
  // handle the tap
}
```

## Toggle / Switch
```swift
@State var isToggle: Bool = false

Toggle(isOn: $isToggle) {
  Text("Toogle")
}
```       
        
## TextField
```swift     
@State var name = ""

TextField("Please Enter Name", text: $name)
  .textFieldStyle(RoundedBorderTextFieldStyle())
```

## Slider
```swift
@State var slider: Float = 5.0

Slider(value: $slider, in: 0...10)
  .padding(.horizontal, 40)
```

## Stepper
```swift
@State var stepperValue = 5          

Stepper("Steps \(stepperValue)", value: $stepperValue, in: 0...10)
  .padding(.horizontal, 80)
```

## Picker
```swift
@State var weekDayIndex = 0
var weekDays = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

Picker("Week Day", selection: $weekDayIndex) {
  ForEach(0..<weekDays.count) { index in
    Text(self.weekDays[index])
      .tag(index)
    }
}.padding(.horizontal, 80)
```

## Segmented Control
```swift
@State var genreMusicIndex = 0
var genresMusic = ["Romantic", "Rock", "Electro", "Rap"]

Picker("Week Day", selection: $genreMusicIndex) {
  ForEach(0..<genresMusic.count) { index in
    Text(self.genresMusic[index])
      .tag(index)
    }
}
.pickerStyle(SegmentedPickerStyle())
.padding(.horizontal, 80)
```

## Date Picker
```swift
@State var dateOfBirth = Date()
 
DatePicker("Select Date of Birth", selection: $dateOfBirth, in: ...Date(), displayedComponents: [.date])
  .labelsHidden()
  .padding(.horizontal, 30)
```

## NavigationView and NavigationLink
```swift
NavigationView {
  NavigationLink("Navigation Link", destination: Text("Navigation Link Clicked"))
  .navigationBarTitle("Navigation Demo")
}
```

        
        
