# @Environment Property and Dynamic Type Sizes

**@Environment** is specifically there to work with SwiftUI’s own pre-defined keys; fixed properties that come from the system.
* E.g. Accessibility, dynamic type, locale, orientation, color scheme, etc.

vs.

**@EnvironmentObject** allows us to create our own object and inject arbitrary values into the environment
* E.g. @EnvironmentObject var vm: ViewModel


```swift
struct ContentView: View {
    
    @Environment(\.dynamicTypeSize) var dynamicTypeSize
    //enum: accessibility 1, 2, 3, etc
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        if dynamicTypeSize >= .accessibility2 {
            VStack {
                Image("Brian")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle()) //Or, .mask(Circle())
                
                Text("Brian McIntosh")
                    .bold()
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(colorScheme == .dark ? .red : .green)
            }
        }else{
            HStack {
                Image("Brian")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle()) //Or, .mask(Circle())
                
                Text("Brian McIntosh")
                    .bold()
                    .font(.title)
                    .foregroundColor(colorScheme == .dark ? .red : .green)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.dynamicTypeSize, .accessibility1)
        //same thing:
        //.environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
    }
}
```
