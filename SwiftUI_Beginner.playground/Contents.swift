import SwiftUI

/*:
 ## Property Wrappers
 */
//
//var _property1: String
//var firstName: String {
//    get { return _property1.uppercased()}
//    set { _property1 = newValue}
//}
//
//var _property2: String
//var secondName: String{
//    get { return _property2.uppercased()}
//    set { _property2 = newValue }
//}


@propertyWrapper
struct Capitalized {
    private var value: String
    init(wrappedValue value: String) {
        self.value = value.uppercased()
    }

    var wrappedValue: String {
        get { value }
        set { value = newValue.uppercased() }
    }
}

struct User {

    @Capitalized
    var firstName: String

    @Capitalized
    var lastName: String
}

let user = User(firstName: "Bhavesh", lastName: "Gupta")
print(user.lastName, user.firstName)


struct Seat {
    private var booked = false

    var toggleBooking: Bool {
        return self.booked.toggle()
    }
}
