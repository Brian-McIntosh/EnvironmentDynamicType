# EnvironmentDynamicType

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
