//
//  ContentView.swift
//  logo-ios
//
//  Created by Nutek Security Solutions on 08/02/2024.
//

import SwiftUI

// import logo from bridging header logo.h
// logo.h is generated from logo.c using c2swift
// c2swift is a tool that converts C code to Swift code

// import functions from bridging heade





struct ContentView: View {
    var body: some View {
        VStack {
            Text(String(cString: logo_black()))
                .font(.custom("Courier", size: 8))
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
