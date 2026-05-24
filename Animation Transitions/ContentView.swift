//
//  ContentView.swift
//  Animation Transitions
//
//  Created by Sachit Mittal on 23/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section("Built-in Transition") {
                    NavigationLink("Move Transition"){
                        MoveTransitionsView()
                    }
                    NavigationLink("Slide Transition"){
                        SlideTransitionsView()
                    }
                    NavigationLink("Asymmetric Transition"){
                        AsymmetricTransitionsView()
                    }
                    NavigationLink("Combined Transition"){
                        CombinedTransitionsView()
                    }

                }
                
                Section("Custom Transition") {
                    NavigationLink("Rotating and Scale"){
                        CustomTransitionView()
                    }
                    NavigationLink("Flip From Top"){
                        FlipTransitionView()
                    }
                }
            }
            .navigationTitle("Transitions")
        }
    }
}

#Preview {
    ContentView()
}
