//
//  SlideTransitionsView.swift
//  Animation Transitions
//
//  Created by Sachit Mittal on 23/05/26.
//

import SwiftUI

struct SlideTransitionsView: View {
    
    @State private var show = false
    
    var body: some View {
        ZStack{
            BackgroundView()
            
            VStack{
                
                Spacer()
                
                if show {
                    Circle()
                        .fill(.indigo.gradient)
                        .frame(width: 200, height: 200)
                        .transition(.slide)
                }
                
                Spacer()
                
                Button(show ? "Hide" : "Show") {
                    withAnimation{
                        show.toggle()
                    }
                }
                .buttonStyle(.borderedProminent)
            }
        }
        .navigationTitle("Slide Transitions")
    }
}

#Preview {
    SlideTransitionsView()
}
