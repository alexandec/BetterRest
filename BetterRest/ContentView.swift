//
//  ContentView.swift
//  BetterRest
//
//  Created by Christopher Michael Alexander on 5/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
        DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...).labelsHidden()
    }
}

#Preview {
    ContentView()
}
