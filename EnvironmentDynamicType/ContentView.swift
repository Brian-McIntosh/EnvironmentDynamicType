//
//  ContentView.swift
//  EnvironmentDynamicType
//
//  Created by Brian McIntosh on 4/21/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.dynamicTypeSize) var dynamicTypeSize
    //enum: accessibility 1, 2, 3, etc
    
    var body: some View {

        HStack {
            Image("Brian")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle()) //Or, .mask(Circle())
            
            Text("Brian McIntosh")
                .bold()
                .font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .accessibilityExtraExtraExtraLarge)
    }
}
