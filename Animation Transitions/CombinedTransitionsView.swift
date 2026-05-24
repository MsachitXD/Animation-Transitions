//
//  CombinedTransitionsView.swift
//  Animation Transitions
//
//  Created by Sachit Mittal on 23/05/26.
//

import SwiftUI

struct CombinedTransitionsView: View {
    @State private var show = false
    
    var body: some View {
        ZStack{
            BackgroundView()
            
            VStack{
                
                Spacer()
                
                if show {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.teal.gradient)
                        .frame(width: 200, height: 200)
                        .transition(
                            .move(edge: .bottom)
                            .combined(with: .opacity)
                            .combined(with: .scale)
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
        .navigationTitle("Combined Transitions")
    }
}

#Preview {
    CombinedTransitionsView()
}
