//
//  AsymmetricTransitionsView.swift
//  Animation Transitions
//
//  Created by Sachit Mittal on 23/05/26.
//

import SwiftUI

struct AsymmetricTransitionsView: View {
    @State private var show = false
    
    var body: some View {
        ZStack{
            BackgroundView()
            
            VStack{
                
                Spacer()
                
                if show {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.orange.gradient)
                        .frame(width: 200, height: 200)
                        .transition(
                            .asymmetric(
                            insertion: .move(edge: .leading),
//                            removal: .move(edge: .bottom)
//                            removal: .opacity
                            removal: .scale
                            )
                        )
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
        .navigationTitle("Asymmetric Transitions")
    }
}

#Preview {
    AsymmetricTransitionsView()
}
