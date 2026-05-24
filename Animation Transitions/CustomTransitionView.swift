//
//  CustomTransitionView.swift
//  Animation Transitions
//
//  Created by Sachit Mittal on 23/05/26.
//

import SwiftUI

struct CustomTransitionView: View {
    @State private var show = false
    
    var body: some View {
        ZStack{
            BackgroundView()
            
            VStack{
                
                Spacer()
                
                if show {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.purple.gradient)
                        .frame(width: 200, height: 200)
                        .transition(.rotatingScale)
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
        .navigationTitle("Rotating & Scale")
    }
}

#Preview {
    NavigationStack{
        CustomTransitionView()
    }
}
